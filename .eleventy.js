function slugify(text) {
  return text
    .toString()
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)/g, "");
}

module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy("css");

  eleventyConfig.addFilter("readableDate", (dateObj) => {
    const date = new Date(dateObj);
    return date.toLocaleDateString("id-ID", {
      day: "numeric",
      month: "long",
      year: "numeric",
    });
  });

  eleventyConfig.addFilter("slugify", slugify);

  // Semua catatan (file .md di dalam folder notes/**) yang bertag "notes"
  eleventyConfig.addCollection("notes", (collectionApi) => {
    return collectionApi
      .getFilteredByTag("notes")
      .sort((a, b) => b.date - a.date);
  });

  // Kelompokkan catatan berdasarkan kategori (nama folder)
  eleventyConfig.addCollection("categoryList", (collectionApi) => {
    const notes = collectionApi
      .getFilteredByTag("notes")
      .sort((a, b) => b.date - a.date);

    const map = new Map();
    for (const note of notes) {
      const name = note.data.category || "Umum";
      if (!map.has(name)) map.set(name, []);
      map.get(name).push(note);
    }

    return [...map.entries()]
      .map(([name, items]) => ({
        name,
        slug: slugify(name),
        notes: items,
      }))
      .sort((a, b) => a.name.localeCompare(b.name));
  });

  return {
    dir: {
      input: ".",
      includes: "_includes",
      output: "_site",
    },
    templateFormats: ["md", "njk", "html"],
    markdownTemplateEngine: "njk",
    htmlTemplateEngine: "njk",
  };
};
