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
  orderIndex: number;
};

export type Note = NoteSummary & {
  content: string;
  sources: NoteSource[];
  created_at: string;
};

export type CategoryWithNotes = Category & {
  notes: NoteSummary[];
};

export type Profile = {
  id: string;
  email?: string;
  displayName: string | null;
};

export type Comment = {
  id: string;
  body: string;
  createdAt: string;
  userId: string;
  authorName: string;
};

export type ProgressStatus = "belum" | "dipelajari" | "selesai";

export type ProgressEntry = {
  status: ProgressStatus;
  updatedAt: string;
  note: NoteSummary;
};

export type CategoryProgress = {
  total: number;
  selesai: number;
  dipelajari: number;
};

export type AdjacentNotes = {
  prev: NoteSummary | null;
  next: NoteSummary | null;
};
