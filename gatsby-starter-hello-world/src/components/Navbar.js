import { Link, graphql, useStaticQuery } from "gatsby"
import React from "react"

export default function Navbar() {
    // Can only be called once
    // has some issues when component names are not capitalized
    const data = useStaticQuery(graphql`
        query SiteTitle {
            site {
                siteMetadata {
                    title
                }
            }
        }
    `)
    const { title } = data.site.siteMetadata

    return (
        <nav>
            <h1>{title}</h1>
            <div className="links">
                <Link to={"/"}>Home</Link>
                <Link to={"/about"}>About</Link>
                <Link to={"/projects"}>Portfolio Projects</Link>
            </div>
        </nav>
    )
}
