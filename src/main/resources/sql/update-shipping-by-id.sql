UPDATE shippings
    SET
        lastModifiedDate 		= :lastModifiedDate,
        userId 					= :userId,
        userName 				= :userName,
        userEmail 				= :userEmail,
        userPhone				= :userPhone,
        billingStreet			= :billingStreet,
        billingCity				= :billingCity,
        billingState			= :billingState,
        billingPostalCode		= :billingPostalCode,
        billingCountry			= :billingCountry,
        shippingStreet			= :shippingStreet,
        shippingCity			= :shippingCity,
        shippingState			= :shippingState,
        shippingPostalCode		= :shippingPostalCode,
        shippingCountry			= :shippingCountry
    WHERE
    	id						= :id; 
    