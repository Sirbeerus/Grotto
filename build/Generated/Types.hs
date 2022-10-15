-- This file is auto generated and will be overriden regulary. Please edit `Application/Schema.sql` to change the Types
{-# LANGUAGE TypeSynonymInstances, FlexibleInstances, InstanceSigs, MultiParamTypeClasses, TypeFamilies, DataKinds, TypeOperators, UndecidableInstances, ConstraintKinds, StandaloneDeriving  #-}
{-# OPTIONS_GHC -Wno-unused-imports -Wno-dodgy-imports -Wno-unused-matches #-}
module Generated.Types where

import IHP.HaskellSupport
import IHP.ModelSupport
import CorePrelude hiding (id)
import Data.Time.Clock
import Data.Time.LocalTime
import qualified Data.Time.Calendar
import qualified Data.List as List
import qualified Data.ByteString as ByteString 
import qualified Net.IP 
import Database.PostgreSQL.Simple
import Database.PostgreSQL.Simple.FromRow
import Database.PostgreSQL.Simple.FromField hiding (Field, name)
import Database.PostgreSQL.Simple.ToField hiding (Field)
import qualified IHP.Controller.Param
import GHC.TypeLits
import Data.UUID (UUID)
import Data.Default
import qualified IHP.QueryBuilder as QueryBuilder
import qualified Data.Proxy
import GHC.Records
import Data.Data
import qualified Data.String.Conversions
import qualified Data.Text.Encoding
import qualified Data.Aeson
import Database.PostgreSQL.Simple.Types (Query (Query), Binary ( .. ))
import qualified Database.PostgreSQL.Simple.Types
import IHP.Job.Types
import IHP.Job.Queue ()
import qualified Data.Dynamic
import Data.Scientific




data Post' comments = Post {id :: (Id' "posts"), title :: Text, body :: Text, createdAt :: UTCTime, comments :: comments, meta :: MetaBag} deriving (Eq, Show)
instance InputValue Post where inputValue = IHP.ModelSupport.recordToInputValue
type Post = Post' (QueryBuilder.QueryBuilder "comments")

instance FromRow Post where
    fromRow = do
        id <- field
        title <- field
        body <- field
        createdAt <- field
        let theRecord = Post id title body createdAt (QueryBuilder.filterWhere (#postId, id) (QueryBuilder.query @Comment)) def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (Post' _) = "posts"
type instance GetModelByTableName "posts" = Post
type instance GetModelName (Post' _) = "Post"

type instance PrimaryKey "posts" = UUID

instance QueryBuilder.FilterPrimaryKey "posts" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

type instance Include "comments" (Post' comments) = Post' [Comment]

instance CanCreate Post where
    create :: (?modelContext :: ModelContext) => Post -> IO Post
    create model = do
        List.head <$> sqlQuery "INSERT INTO posts (id, title, body, created_at) VALUES (?, ?, ?, ?) RETURNING id, title, body, created_at" ((fieldWithDefault #id model, get #title model, get #body model, fieldWithDefault #createdAt model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO posts (id, title, body, created_at) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?, ?)") models)) <> " RETURNING id, title, body, created_at") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #title model), toField (get #body model), toField (fieldWithDefault #createdAt model)]) models)

instance CanUpdate Post where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE posts SET id = ?, title = ?, body = ?, created_at = ? WHERE id = ? RETURNING id, title, body, created_at" ((fieldWithUpdate #id model, fieldWithUpdate #title model, fieldWithUpdate #body model, fieldWithUpdate #createdAt model, get #id model))

instance Record Post where
    {-# INLINE newRecord #-}
    newRecord = Post def def def def def def
instance Default (Id' "posts") where def = Id def
instance () => Table (Post' comments) where
    tableName = "posts"
    tableNameByteString = Data.Text.Encoding.encodeUtf8 "posts"
    columnNames = ["id","title","body","created_at"]
    primaryKeyCondition Post { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (Post' comments) (Id' "posts") where
    {-# INLINE setField #-}
    setField newValue (Post id title body createdAt comments meta) =
        Post newValue title body createdAt comments (meta { touchedFields = "id" : touchedFields meta })
instance SetField "title" (Post' comments) Text where
    {-# INLINE setField #-}
    setField newValue (Post id title body createdAt comments meta) =
        Post id newValue body createdAt comments (meta { touchedFields = "title" : touchedFields meta })
instance SetField "body" (Post' comments) Text where
    {-# INLINE setField #-}
    setField newValue (Post id title body createdAt comments meta) =
        Post id title newValue createdAt comments (meta { touchedFields = "body" : touchedFields meta })
instance SetField "createdAt" (Post' comments) UTCTime where
    {-# INLINE setField #-}
    setField newValue (Post id title body createdAt comments meta) =
        Post id title body newValue comments (meta { touchedFields = "createdAt" : touchedFields meta })
instance SetField "comments" (Post' comments) comments where
    {-# INLINE setField #-}
    setField newValue (Post id title body createdAt comments meta) =
        Post id title body createdAt newValue (meta { touchedFields = "comments" : touchedFields meta })
instance SetField "meta" (Post' comments) MetaBag where
    {-# INLINE setField #-}
    setField newValue (Post id title body createdAt comments meta) =
        Post id title body createdAt comments newValue
instance UpdateField "id" (Post' comments) (Post' comments) (Id' "posts") (Id' "posts") where
    {-# INLINE updateField #-}
    updateField newValue (Post id title body createdAt comments meta) = Post newValue title body createdAt comments (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "title" (Post' comments) (Post' comments) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Post id title body createdAt comments meta) = Post id newValue body createdAt comments (meta { touchedFields = "title" : touchedFields meta })
instance UpdateField "body" (Post' comments) (Post' comments) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Post id title body createdAt comments meta) = Post id title newValue createdAt comments (meta { touchedFields = "body" : touchedFields meta })
instance UpdateField "createdAt" (Post' comments) (Post' comments) UTCTime UTCTime where
    {-# INLINE updateField #-}
    updateField newValue (Post id title body createdAt comments meta) = Post id title body newValue comments (meta { touchedFields = "createdAt" : touchedFields meta })
instance UpdateField "comments" (Post' comments) (Post' comments') comments comments' where
    {-# INLINE updateField #-}
    updateField newValue (Post id title body createdAt comments meta) = Post id title body createdAt newValue (meta { touchedFields = "comments" : touchedFields meta })
instance UpdateField "meta" (Post' comments) (Post' comments) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (Post id title body createdAt comments meta) = Post id title body createdAt comments newValue



data Comment' postId = Comment {id :: (Id' "comments"), postId :: postId, author :: Text, body :: Text, meta :: MetaBag} deriving (Eq, Show)
instance InputValue Comment where inputValue = IHP.ModelSupport.recordToInputValue
type Comment = Comment' (Id' "posts")

instance FromRow Comment where
    fromRow = do
        id <- field
        postId <- field
        author <- field
        body <- field
        let theRecord = Comment id postId author body def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (Comment' _) = "comments"
type instance GetModelByTableName "comments" = Comment
type instance GetModelName (Comment' _) = "Comment"

type instance PrimaryKey "comments" = UUID

instance QueryBuilder.FilterPrimaryKey "comments" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

type instance Include "postId" (Comment' postId) = Comment' (GetModelById postId)

instance CanCreate Comment where
    create :: (?modelContext :: ModelContext) => Comment -> IO Comment
    create model = do
        List.head <$> sqlQuery "INSERT INTO comments (id, post_id, author, body) VALUES (?, ?, ?, ?) RETURNING id, post_id, author, body" ((fieldWithDefault #id model, get #postId model, get #author model, get #body model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO comments (id, post_id, author, body) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?, ?)") models)) <> " RETURNING id, post_id, author, body") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #postId model), toField (get #author model), toField (get #body model)]) models)

instance CanUpdate Comment where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE comments SET id = ?, post_id = ?, author = ?, body = ? WHERE id = ? RETURNING id, post_id, author, body" ((fieldWithUpdate #id model, fieldWithUpdate #postId model, fieldWithUpdate #author model, fieldWithUpdate #body model, get #id model))

instance Record Comment where
    {-# INLINE newRecord #-}
    newRecord = Comment def def def def  def
instance Default (Id' "comments") where def = Id def
instance () => Table (Comment' postId) where
    tableName = "comments"
    tableNameByteString = Data.Text.Encoding.encodeUtf8 "comments"
    columnNames = ["id","post_id","author","body"]
    primaryKeyCondition Comment { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (Comment' postId) (Id' "comments") where
    {-# INLINE setField #-}
    setField newValue (Comment id postId author body meta) =
        Comment newValue postId author body (meta { touchedFields = "id" : touchedFields meta })
instance SetField "postId" (Comment' postId) postId where
    {-# INLINE setField #-}
    setField newValue (Comment id postId author body meta) =
        Comment id newValue author body (meta { touchedFields = "postId" : touchedFields meta })
instance SetField "author" (Comment' postId) Text where
    {-# INLINE setField #-}
    setField newValue (Comment id postId author body meta) =
        Comment id postId newValue body (meta { touchedFields = "author" : touchedFields meta })
instance SetField "body" (Comment' postId) Text where
    {-# INLINE setField #-}
    setField newValue (Comment id postId author body meta) =
        Comment id postId author newValue (meta { touchedFields = "body" : touchedFields meta })
instance SetField "meta" (Comment' postId) MetaBag where
    {-# INLINE setField #-}
    setField newValue (Comment id postId author body meta) =
        Comment id postId author body newValue
instance UpdateField "id" (Comment' postId) (Comment' postId) (Id' "comments") (Id' "comments") where
    {-# INLINE updateField #-}
    updateField newValue (Comment id postId author body meta) = Comment newValue postId author body (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "postId" (Comment' postId) (Comment' postId') postId postId' where
    {-# INLINE updateField #-}
    updateField newValue (Comment id postId author body meta) = Comment id newValue author body (meta { touchedFields = "postId" : touchedFields meta })
instance UpdateField "author" (Comment' postId) (Comment' postId) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Comment id postId author body meta) = Comment id postId newValue body (meta { touchedFields = "author" : touchedFields meta })
instance UpdateField "body" (Comment' postId) (Comment' postId) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Comment id postId author body meta) = Comment id postId author newValue (meta { touchedFields = "body" : touchedFields meta })
instance UpdateField "meta" (Comment' postId) (Comment' postId) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (Comment id postId author body meta) = Comment id postId author body newValue






