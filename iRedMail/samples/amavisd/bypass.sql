INSERT INTO policy (policy_name,
                    spam_lover, banned_files_lover, bad_header_lover,
                    spam_quarantine_to, banned_quarantine_to, bad_header_quarantine_to)
            VALUES ('@.',
                    'Y', 'Y', 'Y',
                    '', '', '');

INSERT INTO users (priority, email) VALUES (0, '@.');

UPDATE users SET policy_id = (SELECT id FROM policy WHERE policy.policy_name='@.' LIMIT 1);