#!/bin/bash
echo "You need to have example set of JSONs from >= 2015 in jsons/ directory"
# To generate them, use for example:
# GHA2DB_LOCAL=1 GHA2DB_JSON=1 GHA2DB_NODB=1 ./gha2db 2022-04-06 18 2022-04-06 18
ruby ./analysis/analysis.rb new '' jsons/*.json | tee analysis/new.txt
ruby ./analysis/analysis.rb new_actor 'actor' jsons/*.json | tee analysis/new_actor.txt
ruby ./analysis/analysis.rb new_repo 'repo' jsons/*.json | tee analysis/new_repo.txt
ruby ./analysis/analysis.rb new_org 'org' jsons/*.json | tee analysis/new_org.txt
ruby ./analysis/analysis.rb new_payload 'payload' jsons/*.json | tee analysis/new_payload.txt
ruby ./analysis/analysis.rb new_payload_comment 'payload,comment' jsons/*.json | tee analysis/new_payload_comment.txt
ruby ./analysis/analysis.rb new_payload_member 'payload,member' jsons/*.json | tee analysis/new_payload_member.txt
ruby ./analysis/analysis.rb new_payload_commits 'payload,commits,i:0' jsons/*.json | tee analysis/new_payload_commits.txt
ruby ./analysis/analysis.rb new_payload_release 'payload,release' jsons/*.json | tee analysis/new_payload_release.txt
ruby ./analysis/analysis.rb new_payload_issue 'payload,issue' jsons/*.json | tee analysis/new_payload_issue.txt
ruby ./analysis/analysis.rb new_payload_forkee 'payload,forkee' jsons/*.json | tee analysis/new_payload_forkee.txt
ruby ./analysis/analysis.rb new_payload_pull_request 'payload,pull_request' jsons/*.json | tee analysis/new_payload_pull_request.txt
ruby ./analysis/analysis.rb new_payload_comment_user 'payload,comment,user' jsons/*.json | tee analysis/new_payload_comment_user.txt
ruby ./analysis/analysis.rb new_payload_commits_author 'payload,commits,i:0,author' jsons/*.json | tee analysis/new_payload_commits_author.txt
ruby ./analysis/analysis.rb new_payload_release_author 'payload,release,author' jsons/*.json | tee analysis/new_payload_release_author.txt
ruby ./analysis/analysis.rb new_payload_release_assets 'payload,release,assets,i:0' jsons/*.json | tee analysis/new_payload_release_assets.txt
ruby ./analysis/analysis.rb new_payload_issue_assignee 'payload,issue,assignee' jsons/*.json | tee analysis/new_payload_issue_assignee.txt
ruby ./analysis/analysis.rb new_payload_issue_labels 'payload,issue,labels,i:0' jsons/*.json | tee analysis/new_payload_issue_labels.txt
ruby ./analysis/analysis.rb new_payload_issue_user 'payload,issue,user' jsons/*.json | tee analysis/new_payload_issue_user.txt
ruby ./analysis/analysis.rb new_payload_issue_pull_request 'payload,issue,pull_request' jsons/*.json | tee analysis/new_payload_issue_pull_request.txt
ruby ./analysis/analysis.rb new_payload_issue_milestone 'payload,issue,milestone' jsons/*.json | tee analysis/new_payload_issue_milestone.txt
ruby ./analysis/analysis.rb new_payload_forkee_owner 'payload,forkee,owner' jsons/*.json | tee analysis/new_payload_forkee_owner.txt
ruby ./analysis/analysis.rb new_payload_pull_request_assignee 'payload,pull_request,assignee' jsons/*.json | tee analysis/new_payload_pull_request_assignee.txt
ruby ./analysis/analysis.rb new_payload_pull_request_base 'payload,pull_request,base' jsons/*.json | tee analysis/new_payload_pull_request_base.txt
ruby ./analysis/analysis.rb new_payload_pull_request_head 'payload,pull_request,head' jsons/*.json | tee analysis/new_payload_pull_request_head.txt
ruby ./analysis/analysis.rb new_payload_pull_request_merged_by 'payload,pull_request,merged_by' jsons/*.json | tee analysis/new_payload_pull_request_merged_by.txt
ruby ./analysis/analysis.rb new_payload_pull_request_user 'payload,pull_request,user' jsons/*.json | tee analysis/new_payload_pull_request_user.txt
ruby ./analysis/analysis.rb new_payload_pull_request_milestone 'payload,pull_request,milestone' jsons/*.json | tee analysis/new_payload_pull_request_milestone.txt
ruby ./analysis/analysis.rb new_payload_release_assets_uploader 'payload,release,assets,i:0,uploader' jsons/*.json | tee analysis/new_payload_release_assets_uploader.txt
ruby ./analysis/analysis.rb new_payload_issue_milestone_creator 'payload,issue,milestone,creator' jsons/*.json | tee analysis/new_payload_issue_milestone_creator.txt
ruby ./analysis/analysis.rb new_payload_pull_request_base_repo 'payload,pull_request,base,repo' jsons/*.json | tee analysis/new_payload_pull_request_base_repo.txt
ruby ./analysis/analysis.rb new_payload_pull_request_base_user 'payload,pull_request,base,user' jsons/*.json | tee analysis/new_payload_pull_request_base_user.txt
ruby ./analysis/analysis.rb new_payload_pull_request_head_repo 'payload,pull_request,head,repo' jsons/*.json | tee analysis/new_payload_pull_request_head_repo.txt
ruby ./analysis/analysis.rb new_payload_pull_request_head_user 'payload,pull_request,head,user' jsons/*.json | tee analysis/new_payload_pull_request_head_user.txt
ruby ./analysis/analysis.rb new_payload_pull_request_milestone_creator 'payload,pull_request,milestone,creator' jsons/*.json | tee analysis/new_payload_pull_request_milestone_creator.txt
ruby ./analysis/analysis.rb new_payload_pull_request_base_repo_owner 'payload,pull_request,base,repo,owner' jsons/*.json | tee analysis/new_payload_pull_request_base_repo_owner.txt
ruby ./analysis/analysis.rb new_payload_pull_request_head_repo_owner 'payload,pull_request,head,repo,owner' jsons/*.json | tee analysis/new_payload_pull_request_head_repo_owner.txt
ruby ./analysis/analysis.rb new_payload_pull_request_review 'payload,pull_request,review' jsons/*.json | tee analysis/new_payload_pull_request_review.txt
ruby ./analysis/analysis.rb new_payload_pull_request_review_user 'payload,pull_request,review,user' jsons/*.json | tee analysis/new_payload_pull_request_review_user.txt
