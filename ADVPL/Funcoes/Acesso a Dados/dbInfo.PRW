#INCLUDE "TOTVS.CH"


/* codes for DBRECORDINFO() */
Static DBRI_DELETED   :=    1
Static DBRI_LOCKED    :=    2
Static DBRI_RECSIZE   :=    3
Static DBRI_RECNO     :=    4
Static DBRI_UPDATED   :=    5


/* codes for DBINFO() */
Static DBI_ISDBF         :=  1  /* Logical: RDD support data file format? */
Static DBI_CANPUTREC     :=  2  /* Logical: RDD support Putting Records? */
Static DBI_GETHEADERSIZE :=  3  /* Numeric: Get header size of the file  */
Static DBI_LASTUPDATE    :=  4  /* Date:    Last date RDD file updated   */
Static DBI_GETDELIMITER  :=  5  /* String:  Get default delimiter        */
Static DBI_SETDELIMITER  :=  6  /* String:  Set default delimiter        */
Static DBI_GETRECSIZE    :=  7  /* Numeric: Get record size of the file  */
Static DBI_GETLOCKARRAY  :=  8  /* Array: Get an array of locked records */
Static DBI_TABLEEXT      :=  9  /* String:  Get table file extension     */
Static DBI_FULLPATH      := 10  /* String: Full path name of opened file */

Static DBI_ISFLOCK       := 20  /* Get file lock status             */

Static DBI_CHILDCOUNT    := 22  /* Number of opened relations       */
Static DBI_FILEHANDLE    := 23  /* Handle of opened file            */

Static DBI_BOF          :=  26  /* BOF flag - alternate to bof()    */
Static DBI_EOF          :=  27  /* EOF flag - alternate to eof()    */
Static DBI_DBFILTER     :=  28  /* Filter expression                */
Static DBI_FOUND        :=  29  /* FOUND flag - alternate to found  */
Static DBI_FCOUNT       :=  30  /* Number of fields                 */
Static DBI_LOCKCOUNT    :=  31  /* Get record size of the file      */
Static DBI_VALIDBUFFER  :=  32  /* Is the current buffer valid      */
Static DBI_ALIAS        :=  33  /* Alias name of workarea           */
Static DBI_GETSCOPE     :=  34  /* Locate codeblock                 */
Static DBI_LOCKOFFSET   :=  35  /* New locking offset               */
Static DBI_SHARED       :=  36  /* Gets/Sets the shared flag        */
Static DBI_MEMOEXT      :=  37  /* Gets/Sets the shared flag        */
Static DBI_MEMOHANDLE   :=  38  /* Dos handle for memo file         */
Static DBI_MEMOBLOCKSIZE:=  39  /* Blocksize in memo files          */

Static DBI_DB_VERSION   := 101  /* HOST driver Version              */
Static DBI_RDD_VERSION  := 102  /* RDD version (current RDD)        */

Static DBI_USER        := 1000  /* Start of user defineable values  */


// These are for internal use by BLOB.CH

Static DBI_BLOB_DIRECT_EXPORT := 201
Static DBI_BLOB_DIRECT_GET    := 202
Static DBI_BLOB_DIRECT_IMPORT := 203
Static DBI_BLOB_DIRECT_PUT    := 204
Static DBI_BLOB_ROOT_GET      := 205
Static DBI_BLOB_ROOT_PUT      := 206
Static DBI_BLOB_ROOT_LOCK     := 207
Static DBI_BLOB_ROOT_UNLOCK   := 208

Static DBS_BLOB_GET          :=  201

// These are for public use

Static DBI_BLOB_DIRECT_LEN   :=  209
Static DBI_BLOB_DIRECT_TYPE  :=  210
Static DBI_BLOB_INTEGRITY    :=  211
Static DBI_BLOB_OFFSET       :=  212
Static DBI_BLOB_RECOVER      :=  213

Static DBS_BLOB_LEN          :=  202
Static DBS_BLOB_OFFSET       :=  203
Static DBS_BLOB_POINTER      :=  204
Static DBS_BLOB_TYPE         :=  205

Static BLOB_EXPORT_APPEND    :=  1
Static BLOB_EXPORT_OVERWRITE :=  0

Static FILEGET_APPEND         := 1
Static FILEGET_OVERWRITE      := 0

Static ERDD_OPEN_MEMO    := 1002
Static ERDD_CREATE_MEMO  := 1005
Static ERDD_OUTOFMEMORY  := 1104
Static ERDD_READ         := 1010
Static ERDD_WRITE        := 1011
Static ERDD_DATATYPE     := 1020
Static ERDD_UNLOCKED     := 1022
Static ERDD_OPEN_FILE    := 1101
Static ERDD_CREATE_FILE  := 1102


User Function dbInfo()

dbSelectArea('SA1')

MsgInfo( 'DBI_Alias:' + dbInfo(DBI_Alias) + CRLF + ;
		'DBI_GetRecSize:' + cValtoChar( dbInfo(DBI_GetRecSize) ) + CRLF + ;
		'DBI_FullPath:' + dbInfo(DBI_FullPath) + CRLF + ;
		'DBI_LastUpdate:' + Dtoc(dbInfo(DBI_LastUpdate)) + CRLF + ;
		'DBI_TableExt:' + dbInfo(DBI_TableExt) + CRLF ;
, 'UniversoADVPL' )

Return( Nil )