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

# And put like this:
![this](https://github.com/GitFutureTrunks/GFT-wallet/assets/145227152/c5921c94-0324-4eeb-bfc6-030e3ed605d1)



```
		elseif itemData.name == 'wallet' then
			local info = {
				walletid = math.random(1111,9999)
			}
		Player.Functions.AddItem('wallet', 1, nil, info, {["quality"] = 100})
```
