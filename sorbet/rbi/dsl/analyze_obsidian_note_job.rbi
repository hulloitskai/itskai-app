# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `AnalyzeObsidianNoteJob`.
# Please instead update this file by running `bin/tapioca dsl AnalyzeObsidianNoteJob`.

class AnalyzeObsidianNoteJob
  class << self
    sig do
      params(
        note: ::ObsidianNote,
        block: T.nilable(T.proc.params(job: AnalyzeObsidianNoteJob).void)
      ).returns(T.any(AnalyzeObsidianNoteJob, FalseClass))
    end
    def perform_later(note, &block); end

    sig { params(note: ::ObsidianNote).void }
    def perform_now(note); end
  end
end
