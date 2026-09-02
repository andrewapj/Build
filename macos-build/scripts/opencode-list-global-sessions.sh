#!/bin/zsh

opencode db --format json "SELECT id, title, time_updated AS updated, time_created AS created, project_id AS projectId, directory FROM session WHERE parent_id IS NULL AND time_archived IS NULL ORDER BY time_updated DESC;"
