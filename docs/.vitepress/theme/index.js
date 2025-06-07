// .vitepress/theme/index.js
import DefaultTheme from 'vitepress/theme'
import { useData, useRoute } from 'vitepress';
import './custom.css'
import codeblocksFold from 'vitepress-plugin-codeblocks-fold'; // import method
import 'vitepress-plugin-codeblocks-fold/style/index.css'; // import style
import Layout from './Layout.vue'

export default {
    ...DefaultTheme,
    Layout,
    enhanceApp(ctx) {
        DefaultTheme.enhanceApp(ctx);

    },
    setup() {
        // get frontmatter and route
        const { frontmatter } = useData();
        const route = useRoute();
        // basic use
        codeblocksFold({ route, frontmatter }, true, 400);
    }
}