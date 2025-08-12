;; Open Badge Wallet Contract
;; Enables storing and retrieving NFT-based digital credentials (badges)

(define-non-fungible-token badge-token uint)

;; Error constants
(define-constant err_not_owner (err u100))
(define-constant err_badge_not_found (err u101))

;; Store badge metadata by ID
(define-map badge_metadata uint
  (tuple
    (recipient principal)
    (name (string-ascii 32))
  )
)

;; Function 1: Mint a badge NFT to a user with metadata
(define-public (issue-badge (id uint) (recipient principal) (name (string-ascii 32)))
  (begin
    (asserts! (is-eq tx-sender recipient) err_not_owner)
    (try! (nft-mint? badge-token id recipient))
    (map-set badge_metadata id { recipient: recipient, name: name })
    (ok true)
  )
)

;; Function 2: Get badge metadata by ID
(define-read-only (get-badge-info (id uint))
  (match (map-get? badge_metadata id)
    some_meta (ok some_meta)
    err_badge_not_found
  )
)