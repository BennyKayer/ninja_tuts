import { graphql, Link } from "gatsby"
import { getImage, GatsbyImage } from "gatsby-plugin-image"
import React from "react"
import Layout from "../components/Layout"
import * as styles from "../styles/home.module.css"

export default function Home({ data }) {
    const image = getImage(data.file)

    return (
        <Layout>
            <section className={styles.header}>
                <div>
                    <h2>Design</h2>
                    <h3>Develop & Deploy</h3>
                    <p>UX designer & web developer based in Manchester.</p>
                    <Link className={styles.btn} to={"/projects"}>
                        My Portfolio Projects
                    </Link>
                    <GatsbyImage image={image} alt={data.file.name} />
                </div>
            </section>
        </Layout>
    )
}

// Making queries from page comonents
export const query = graphql`
    query Banner {
        file(relativePath: { eq: "banner.png" }) {
            id
            childImageSharp {
                gatsbyImageData
            }
            name
        }
    }
`
