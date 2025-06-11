// .vitepress/theme/index.js
import DefaultTheme from 'vitepress/theme'
import { useData, useRoute } from 'vitepress';
import './custom.css'
import 'viewerjs/dist/viewer.min.css'
import imageViewer from 'vitepress-plugin-image-viewer'
import vImageViewer from 'vitepress-plugin-image-viewer/lib/vImageViewer.vue'
import codeblocksFold from 'vitepress-plugin-codeblocks-fold'; // import method
import 'vitepress-plugin-codeblocks-fold/style/index.css'; // import style
import Layout from './Layout.vue'

export default {
    ...DefaultTheme,
    Layout,
    enhanceApp(ctx) {
        DefaultTheme.enhanceApp(ctx);
        ctx.app.component('vImageViewer', vImageViewer)
    },
    setup() {
        // get frontmatter and route
        const { frontmatter } = useData();
        const route = useRoute();
        // basic use
        codeblocksFold({ route, frontmatter }, true, 400);
        imageViewer(route)
    }
}