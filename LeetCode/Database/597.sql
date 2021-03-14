-- corrected
SELECT
  COALESCE(ROUND((
             SELECT
               COUNT(DISTINCT requester_id, accepter_id)
             FROM RequestAccepted)
            / COUNT(DISTINCT sender_id, send_to_id), 2), 0.00) AS accept_rate
FROM
  FriendRequest;