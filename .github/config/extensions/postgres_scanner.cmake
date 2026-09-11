# postgres_scanner needs DONT_LINK because it depends on libpq/OpenSSL
if (NOT MINGW AND NOT ${WASM_ENABLED})
    duckdb_extension_load(postgres_scanner
            DONT_LINK
            GIT_URL https://github.com/lihongjie0209/duckdb-postgres
            GIT_TAG kingbase-text-protocol
            )
endif()
