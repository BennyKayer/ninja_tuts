/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.com/docs/gatsby-config/
 */

module.exports = {
    /* Your site config here */
    plugins: [
        `gatsby-plugin-image`,
        `gatsby-plugin-sharp`,
        `gatsby-transformer-sharp`,
        "gatsby-transformer-remark",
        {
            resolve: `gatsby-source-filesystem`,
            options: {
                name: `images`,
                path: `${__dirname}/src/images/`,
            },
        },
        {
            resolve: `gatsby-source-filesystem`,
            options: {
                name: `notes`,
                path: `${__dirname}/src/notes/`,
            },
        },
        {
            resolve: `gatsby-source-filesystem`,
            options: {
                name: `projects`,
                path: `${__dirname}/src/projects/`,
            },
        },
    ],
    siteMetadata: {
        title: "Web Warrior",
        description: "web dev portfolio",
        copyright: "This website is copyright 2022 Web Warrior",
        contact: "me@thewebwarrior.com",
    },
}
