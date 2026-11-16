<h1 align="center">Verso</h1>

<p align="center">A compact XeLaTeX resume template for tech careers, with English and Chinese examples.</p>

<p align="center">
  <a href="README.md"><img src="https://img.shields.io/badge/English-25364A?style=for-the-badge" alt="English" height="28" /></a>
  &nbsp;
  <a href="README.zh-CN.md"><img src="https://img.shields.io/badge/%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87-E9EEF3?style=for-the-badge" alt="简体中文" height="28" /></a>
</p>

## Preview

<table>
  <tr>
    <td width="50%" align="center">
      <h3>English sample</h3>
      <a href="resume-en.pdf"><img src="preview-en.png?v=85a77772042c" alt="English resume" width="100%" /></a>
      <p><a href="resume-en.pdf">View PDF</a></p>
    </td>
    <td width="50%" align="center">
      <h3>Chinese sample</h3>
      <a href="resume-zh.pdf"><img src="preview-zh.png?v=36a5d72a105a" alt="中文简历" width="100%" /></a>
      <p><a href="resume-zh.pdf">View PDF</a></p>
    </td>
  </tr>
</table>

## Features

- Compact, single-page A4 layout with clear typographic hierarchy.
- Latin Modern English text, Fandol Chinese fonts, bold headings and italic dates.
- Blue hyperlinks with external-link icons and optional GitHub icons.
- Two list levels: bullet points and indented hyphens, with aligned wrapped text.
- Shared styling, bundled fonts and editable accent colors.

The two examples use independent content to demonstrate different layouts and levels of detail. All sample identities, institutions, projects and achievements are **fictional**. Contact details and URLs use placeholder values and `example.com`.

## Get started

Install **TeX Live** or **MacTeX** with XeLaTeX, then run:

```sh
sh build.sh
```

This builds `resume-en.pdf` and `resume-zh.pdf`. Update your name and contact details in `resume-en.tex` or `resume-zh.tex`, then edit the corresponding `content-en.tex` or `content-zh.tex`.

**Overleaf:** upload the source files and `fonts/`, select **XeLaTeX**, and choose `resume-en.tex` or `resume-zh.tex` as the main document. The template uses standard packages: `xeCJK`, `fontspec`, `fontawesome5`, `hyperref`, `graphicx`, `geometry` and `xcolor`. Shell escape is not required.

## Customize

```latex
\ResumeSection{\textit{Projects}}
\ResumeEntry{\textbf{Project name}}{Oct 2025 -- Feb 2026}
\ResumeItem{Summarize the work and its outcome.}
\ResumeSubItem{Add implementation details or evaluation conditions.}
\ResumeLink{https://example.com/demo}{Live demo}
\ProjectLink{https://example.com/code/project}{project}
```

For bilingual headings, use `\ResumeSection{项目经历}{Projects}`. The header takes three arguments: `\ResumeHeader{Name}{Role}{Contact details}`; keep `{}` for unused fields.

`\ResumeText` creates an unbulleted paragraph. Use `\CompactItems` inside a group for tighter list spacing, and `\ProjectGap` / `\SectionGap` to separate blocks.

The default sizes are 9 pt for body text, 9.5 pt for entry titles and dates, and 11 pt for section headings. Set `accent` in the main document to add color to the name, headings and rules; try `244A73` for dark blue or `156B72` for teal. Edit `resume-style.sty` for link colors, spacing and indents.

## License

Template code, documentation and fictional sample content are released under the [MIT License](LICENSE). Bundled fonts retain their own licenses: Fandol uses GPL with the Font Exception, and Latin Modern uses the GUST Font License. See [licenses/](licenses/). Font Awesome is supplied by the TeX distribution's `fontawesome5` package under its original licenses.
