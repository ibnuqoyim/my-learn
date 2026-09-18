export type Category = {
  id: string;
  name: string;
  slug: string;
};

export type NoteSource = {
  label: string;
  url: string;
};

export type NoteSummary = {
  id: string;
  title: string;
  slug: string;
  category: Category;
  updated_at: string;
};

export type Note = NoteSummary & {
  content: string;
  sources: NoteSource[];
  created_at: string;
};

export type CategoryWithNotes = Category & {
  notes: NoteSummary[];
};
