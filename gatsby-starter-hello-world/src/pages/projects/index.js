import { Link, graphql } from "gatsby"
import { GatsbyImage, getImage } from "gatsby-plugin-image"
import React from "react"
import Layout from "../../components/Layout"
import * as styles from "../../styles/projects.module.css"

// I am at /projects
export default function Projects({ data }) {
    const projects = data.projects.nodes
    const contact = data.contact.siteMetadata.contact
    console.log(data)

    return (
        <Layout>
            <div className={styles.portfolio}>
                <h2>Portfolio</h2>
                <h3>Projects & Websites I've Created</h3>
                <div className={styles.projects}>
                    {projects.map(project => {
                        const { slug, title, stack, thumb } =
                            project.frontmatter
                        const image = getImage(thumb)
                        return (
                            <Link key={project.id} to={`/projects/${slug}`}>
                                <div>
                                    <GatsbyImage image={image} alt={title} />
                                    <h3>{title}</h3>
                                    <p>{stack}</p>
                                </div>
                            </Link>
                        )
                    })}
                </div>
                <p>Like what you see? Email me at {contact} for a quote!</p>
            </div>
        </Layout>
    )
}
export const query = graphql`
    query ProjectOverview {
        projects: allMarkdownRemark(
            sort: { fields: frontmatter___date, order: DESC }
        ) {
            nodes {
                frontmatter {
                    slug
                    stack
                    title
                    date
                    thumb {
                        childImageSharp {
                            gatsbyImageData
                        }
                    }
                    featuredImg {
                        childImageSharp {
                            gatsbyImageData
                        }
                    }
                }
                id
            }
        }
        contact: site {
            siteMetadata {
                contact
            }
        }
    }
`
