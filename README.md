# GFT-wallet 
# script for QB-Core

# About
- Optimized
- 0.00ms

# Features
- A wallet that can carry cash & cards
- Four Slots


# Required
**qb-core/shared/items.lua**
```
	['wallet']						 = {['name'] = 'wallet',						['label'] = 'Wallet',					['weight'] = 0,			['type'] = 'item',		['image'] = 'wallet.png', 				['unique'] = true,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Wallet'},
```

**qb-inventory/server/main.lua**

## Search : **if QBCore.Shared.SplitStr(shopType, "_")[1] == "Dealer" then**

# And put like this: https://cdn.discordapp.com/attachments/870207265221771295/1175909248392249354/this.png?ex=656cf1d4&is=655a7cd4&hm=b87626e3792b7fce3ae6b50bddc2473c0b75e6b2db3834466b595061df852866&

```
		elseif itemData.name == 'wallet' then
			local info = {
				walletid = math.random(1111,9999)
			}
		Player.Functions.AddItem('wallet', 1, nil, info, {["quality"] = 100})
```
