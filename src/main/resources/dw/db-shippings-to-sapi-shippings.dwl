%dw 2.0
output application/json skipNullOn="everywhere"
---
/*
 * Maps attributes received from database, 
 * to the shipping attributes that this API have to return.
 * 
 * Input attributes:
 * - attributes that defines shipping in the database;
 * 
 * Returns:
 * - Array of shipping objects.
 * */
payload map {
	id						:$.id,
    createdDate				:$.createdDate,
    lastModifiedDate		:$.lastModifiedDate,
    shipTo: {
      userId				:$.userId,
      name					:$.userName,
      email					:$.userEmail,
      phone					:$.userPhone
    },
    billingAddress: {
      street				:$.billingStreet,
      city					:$.billingCity,
      state					:$.billingState,
      postalCode			:$.billingPostalCode,
      country				:$.billingCountry
    },
    shippingAddress: {
      street				:$.shippingStreet,
      city					:$.shippingCity,
      state					:$.shippingState,
      postalCode			:$.shippingPostalCode,
      country				:$.shippingCountry
    }
}
