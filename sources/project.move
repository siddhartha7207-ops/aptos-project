module MyModule::Inventory {

    use aptos_framework::signer;

    /// Struct representing an expensive part in the inventory
    struct Part has store, key {
        id: u64,              // Unique part identifier
        name: vector<u8>,     // Name of the part
        is_borrowed: bool,    // Borrowing status
    }

    /// Function to register a new part into inventory
    public fun register_part(owner: &signer, id: u64, name: vector<u8>) {
        let part = Part {
            id,
            name,
            is_borrowed: false,
        };
        move_to(owner, part);
    }

    /// Function to borrow a part by ID, enforces borrowing rule
    public fun borrow_part(borrower: &signer, owner: address, id: u64) acquires Part {
        let part = borrow_global_mut<Part>(owner);
        assert!(part.id == id, 1);              // Rule: must match ID
        assert!(!part.is_borrowed, 2);          // Rule: cannot borrow twice
        part.is_borrowed = true;
        // In real use-case: we’d also track borrower, due date, etc.
    }
}
