# Markdown Slides Template

This is a template for slides created with Markdown using [Marp CLI](https://github.com/marp-team/marp-cli).

## How to use this template

* Click on `Use this template` and then `Create a new repository`. Give your repository a meaningful name and set it to public.
* Enable PDF upload:
    * Head to the `Settings` of your newly created repository. First, in the sidebar on the left, click on `Actions` -> `General`.
    * Scroll down to `Workflow permissions` and select `Read and write permissions`. Click on `Save`.
* Enable Pages:
    * In the `Settings` sidebar, select `Pages`.
    * In the `Build and deployment` section, set the `Source` to `GitHub Actions`.
* Place your markdown slides in the `slides/` folder in the repository.
    * You can click on the `slides/` folder and then on the top right, select `Add file`.
    * Now, you can either:
        * `Create new file` to create a completely new file. Give it a filename ending with `.md` to indicate that it is a markdown file, write or paste your content, and then in the top right corner, select `Commit changes...`. Write a meaningful commit message, which is a short description of the changes you just made, and optionally an extended description. Then confirm with the green `Commit changes` button. The changes will be uploaded to your repository.
        * `Upload files` to upload files already saved on your computer. You can drag and drop them or choose them with a file browser by clicking on `choose your files`. Lastly, on the bottom of the page, write a meaningful commit message, which is a short description of the changes you just made, and optionally an extended description. Then confirm with the green `Commit changes` button. The changes will be uploaded to your repository.
* Now, PDF files will be uploaded to the `pdf/` directory in your repository. HTML files are generated and uploaded to GitHub Pages. You can access them by clicking on `Deployments` on the bottom of the sidebar of your repository. You will see a link to your pages. It usually looks like: `https://{your-github-namespace}.github.io/{your-repository-name}`. Usually, {your-github-namespace} will be replaced with GitHub username.
* If you don't have slides called `index.md` in your `slides/` folder, the pages link will give you a 404 error. You can still access your slides, though, by adding the name of your slide + ".html" after the `/`.
    * For example, for user `github-user` with repository `my-repository` and a slide called `slide.md` in the `slides/` folder, a link would look like this:
        * `https://github-user.github.io/my-repository/slide.html`