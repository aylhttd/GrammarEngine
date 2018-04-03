﻿#if !defined ALPHABET_STORAGE_SQLITE__H
#define ALPHABET_STORAGE_SQLITE__H

#include <lem/sqlite.h>
#include <lem/solarix/AlphabetStorage.h>

namespace Solarix
{
    class AlphabetStorage_SQLITE : public AlphabetStorage
    {
    private:
        lem::UFString sqlite_connection_string;
        struct sqlite3* hdb; // дескриптор БД тезауруса

        void CreateTables_Alphabets(void);
        void CreateTables_Coords(void);
        void CreateTables_Classes(void);
        void CreateTables_Entries(void);
        void CreateTables_Criteria(void);
        void CreateTables_Operations(void);
        void CreateTables_SyllabRules(void);

        void StoreCoordStates(int id_coord, const Solarix::GramCoord &coord);
        void StoreClassInternals(int id, const Solarix::GramClass &cls);

        void Execute(const lem::UFString &sql);
        void Execute(const lem::FString &sql);
        void Execute(const char *sql);
        void RaiseError(void);
        void RaiseError(const lem::FString &sql);
        void RaiseError(const char * sql);
        void RaiseError(const char *filename, int line);
        LS_ResultSet* ListByQuery(const char *sql);
        LS_ResultSet* ListByQuery(const lem::FString & sql);
        LS_ResultSet* ListByQuery(const lem::UFString & sql);
        int SelectInt(const lem::FString &Select);
        int LastInsertID();

    public:
        AlphabetStorage_SQLITE(const lem::UFString &connection_string);
        virtual ~AlphabetStorage_SQLITE();

        void CreateSchema();

        virtual Alphabet* GetAlphabet(int id) override;
        virtual int FindAlphabet(const lem::UCString &name) override;
        virtual LS_ResultSet* ListAlphabets(void) override;
        virtual int AddAlphabet(const lem::UCString &name) override;
        virtual void StoreAlphabet(const Alphabet &a) override;
        virtual int CountAlphabets() override;

        virtual bool GetCoord(int id, GramCoord &coord) override;
        virtual LS_ResultSet* ListCoords() override;
        virtual int FindCoord(const lem::UCString &name);
        virtual int CountCoords() override;
        virtual int AddCoord(const lem::UCString &coord) override;
        virtual int AddCoord(Solarix::GramCoord &coord) override;
        virtual void StoreCoord(int id, Solarix::GramCoord &coord) override;

        virtual bool GetClass(int id, GramClass &cls) override;
        virtual LS_ResultSet* ListClasses() override;
        virtual int FindClass(const lem::UCString &name) override;
        virtual int CountClasses() override;
        virtual int AddClass(const lem::UCString &name) override;
        virtual int AddClass(const Solarix::GramClass &cls) override;
        virtual void StoreClass(int id, const GramClass &cls) override;

        virtual void FindSymbol(lem::uint32_t code, lem::MCollect<Solarix::Word_Coord> &projs) override;
        virtual void FindSymbol(lem::uint32_t code, lem::MCollect<Solarix::Word_Coord> &projs, int AlphabetID) override;
        virtual void FindSymbol(lem::uint32_t code, lem::MCollect<Solarix::Word_Coord> &projs, const lem::MCollect<int> & AlphabetID) override;

        virtual int StorePairs(const lem::MCollect<GramCoordPair> & pairs) override;
        virtual void LoadPairs(int id_pairs, lem::MCollect<GramCoordPair> & pairs) override;

        virtual int StoreEntry(const GG_Entry &e) override;
        virtual GG_Entry* LoadEntry(int id) override;
        virtual LS_ResultSet* ListEntries() override;
        virtual int CountEntries() override;
        virtual int CountEntryForms() override;

        virtual void CopyDatabase(const lem::Path & alphabet_db_path) override;

        virtual int FindCriterion(const lem::UCString & name) override;
        virtual int StoreCriterion(const Criterion &x) override;
        virtual Criterion* GetCriterion(int id) override;
        virtual LS_ResultSet* EnumerateCriteria() override;

        virtual LS_ResultSet* ListCharOperations() override;
        virtual GG_CharOperation* GetCharOperation(int id) override;
        virtual int StoreCharOperation(GG_CharOperation *operation) override;
        virtual int FindCharOperation(const lem::UCString &name) override;

        virtual void DeleteSyllabRules() override;
        virtual int StoreSyllabRule(const lem::UCString &rule_name, int id_language, int id_src, int cursor_shift) override;
        virtual void StoreSyllabConditionPoint(
            int id_rule,
            int point_index,
            const lem::MCollect<lem::uint32_t> &codes,
            int id_class,
            int id_entry,
            int id_coord0, int id_state0,
            bool is_left_boundary, bool is_right_boundary,
            bool is_positive
        ) override;
        virtual void StoreSyllabResultPoint(
            int id_rule,
            int point_index,
            int copy_index,
            int merge_index0,
            int merge_count
        ) override;

        virtual LS_ResultSet* ListSyllabRulesForLanguage(int id_language) override;
        virtual LS_ResultSet* ListSyllabRules() override;
        virtual LS_ResultSet* ListSyllabConditionPoints() override;
        virtual LS_ResultSet* ListSyllabResultPoints() override;
        virtual SyllabRule * LoadSyllabRule(int id_rule) override;
        virtual LS_ResultSet* ListSyllabConditionPointsForRule(int id_rule) override;
        virtual LS_ResultSet* ListSyllabResultPointsForRule(int id_rule) override;
    };
}

#endif
