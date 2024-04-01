let rev =
    let collection = [1; 2; 3; 4; 5]
    let initialAccumulator = []
    let combiningFunction currentAccumulator currentItem =
        currentItem :: currentAccumulator

    List.fold combiningFunction initialAccumulator collection

printfn "%A" rev
