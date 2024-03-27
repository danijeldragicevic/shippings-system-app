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
 * - shipping object.
 * */
{
	id						:payload.id,
    createdDate				:payload.createdDate,
    lastModifiedDate		:payload.lastModifiedDate,
    shipTo: {
      userId				:payload.userId,
      name					:payload.userName,
      email					:payload.userEmail,
      phone					:payload.userPhone
    },
    billingAddress: {
      street				:payload.billingStreet,
      city					:payload.billingCity,
      state					:payload.billingState,
      postalCode			:payload.billingPostalCode,
      country				:payload.billingCountry
    },
    shippingAddress: {
      street				:payload.shippingStreet,
      city					:payload.shippingCity,
      state					:payload.shippingState,
      postalCode			:payload.shippingPostalCode,
      country				:payload.shippingCountry
    }
}
