import React from 'react'
import { useConfig } from 'nextra-theme-docs'

type Author = {
	name: string
	email?: string
	affiliation?: string
}

export default function AuthorInfo() {
	const { frontMatter } = useConfig()
	const authors: Author[] = (frontMatter?.authors as Author[]) || []
	const lastUpdated: string | undefined = frontMatter?.lastUpdated as string | undefined

	if (!authors || authors.length === 0) return null

	const formatDate = (iso?: string) => {
		if (!iso) return ''
		const d = new Date(iso)
		return d.toLocaleDateString('en-US', { year: 'numeric', month: 'long', day: 'numeric' })
	}

	return (
		<div className="author-info">
			<div className="author-section">
				<h3>Authors</h3>
				<div className="authors-list">
					{authors.map((a) => (
						<div className="author" key={a.name}>
							<span className="author-name">{a.name}</span>
							{a.email ? (
								<span className="author-email">
									<a href={`mailto:${a.email}`}>{a.email}</a>
								</span>
							) : null}
							{a.affiliation ? <span className="author-affiliation">{a.affiliation}</span> : null}
						</div>
					))}
				</div>
				{lastUpdated ? (
					<div className="last-updated">
						<strong>Last Updated:</strong> {formatDate(lastUpdated)}
					</div>
				) : null}
			</div>
		</div>
	)
} 