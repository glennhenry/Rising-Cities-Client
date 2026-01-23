package net.bigpoint.cityrama.model.architecturalBook.vo
{
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   
   public class BlueprintVo implements IBlueprintVo
   {
      
      public static const STATE_PERMISSION_AVAILABLE:String = "PERMISSION_AVAILABLE";
      
      public static const STATE_FULLY_CONSTRUCTED_AVAILABLE:String = "FULLY_CONSTRUCTED_AVAILABLE";
      
      public static const STATE_BUY_MORE_WITH_RC:String = "BUY_MORE_WITH_RC";
      
      public static const STATE_NOT_AVAILABLE:String = "NOT_AVAILABLE";
      
      public static const STATE_DOESNT_NEED_PERMISSION:String = "STATE_DOESNT_NEED_PERMISSION";
      
      private var _isItemNew:Boolean;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      private var _price:Number;
      
      private var _priceRCBase:Number = 0;
      
      private var _buildPermissionAmount:int;
      
      private var _permission:PlayfieldItemPermissionDTO;
      
      private var _permissionBuyable:Boolean;
      
      private var _minOutput:Number;
      
      private var _maxOutput:Number;
      
      private var _runtime:Number;
      
      private var _restrictions:Vector.<ConfigGroundRestrictionDTO>;
      
      private var _material:Vector.<ConfigOutputDTO>;
      
      private var _consequences:Vector.<ConfigOutputDTO>;
      
      private var _products:Vector.<ConfigGoodDTO>;
      
      private var _unlockLvl:Number;
      
      private var _specialHighlighting:Boolean;
      
      private var _locked:Boolean;
      
      private var _userVC:Number;
      
      private var _userRC:Number;
      
      private var _residentsMax:Number;
      
      private var _residents:Vector.<ResidentVo>;
      
      private var _shopProducts:Vector.<ConfigGoodDTO>;
      
      private var _baseOutput:Number;
      
      private var _baseOutputType:String;
      
      private var _permissionLockedByEvent:Boolean;
      
      public function BlueprintVo(param1:ConfigPlayfieldItemDTO, param2:PlayfieldItemPermissionDTO, param3:int, param4:Vector.<ConfigGroundRestrictionDTO>, param5:Number, param6:Number, param7:Vector.<ConfigGoodDTO> = null, param8:Boolean = true)
      {
         super();
         this._config = param1;
         this._permission = param2;
         this._buildPermissionAmount = this._permission.permissionsLeft;
         this._restrictions = param4;
         this._userVC = param5;
         this._userRC = param6;
         this._shopProducts = param7;
         if(this._config.permissionConfig != null)
         {
            this._permissionBuyable = this._config.permissionConfig.buyCap > 0 && !this._permissionLockedByEvent;
         }
         else
         {
            this._permissionBuyable = false;
         }
         this.locked = this._config.unlockLevel > param3;
         this._isItemNew = param8;
         this.buildVo();
      }
      
      private function buildVo() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<ConfigPhaseDTO> = null;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         this._unlockLvl = this._config.unlockLevel;
         for each(_loc2_ in this._config.tags)
         {
            switch(_loc2_)
            {
               case ServerTagConstants.SHOP:
               case ServerTagConstants.RESIDENTIAL:
               case ServerTagConstants.PRODUCTION:
               case ServerTagConstants.GROUND:
                  _loc1_ = _loc2_;
            }
         }
         if(_loc1_ != ServerTagConstants.GROUND)
         {
            this._price = 0;
            if(this._config.constructionPhases.length > 0)
            {
               if(this._config.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).listEntryOutputs.length > 0 && Boolean(this._config.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY)))
               {
                  this._price = this._config.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY).outputAmount;
               }
               this._priceRCBase = this._config.baseValueForRCConstructionCost;
            }
         }
         else
         {
            _loc3_ = this._config.getAllPhasesByType(ServerPhaseTypes.CREATE_PLACE_NORMAL);
            if(_loc3_ != null && _loc3_.length > 0)
            {
               _loc4_ = _loc3_[0].getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
               if(_loc4_ != null)
               {
                  this._price = _loc4_.outputAmount;
               }
               else
               {
                  this._price = 0;
               }
            }
         }
         if(this._config.activePhases.length != 0)
         {
            if(_loc1_ == ServerTagConstants.RESIDENTIAL)
            {
               _loc8_ = this._config.getAllPhasesByType(ServerPhaseTypes.RESIDENTIAL)[0];
               if(_loc8_ != null)
               {
                  for each(_loc9_ in _loc8_.listEntryOutputs)
                  {
                     if(_loc9_.type == ServerOutputConstants.RESOURCE)
                     {
                        if(_loc9_.resourceConfig != null && _loc9_.resourceConfig.type != ServerResConst.RESOURCE_EXPERIENCE)
                        {
                           this._baseOutput = _loc9_.outputAmount;
                           this._baseOutputType = _loc9_.resourceConfig.type;
                        }
                     }
                  }
               }
               else if(_loc1_ == ServerTagConstants.PRODUCTION)
               {
                  _loc8_ = this._config.getAllPhasesByType(ServerPhaseTypes.PRODUCTION_START)[0];
                  if(_loc8_ != null)
                  {
                     this._baseOutput = _loc8_.getListEntryOutputByType(ServerOutputConstants.GOOD).outputAmount;
                  }
               }
               this._runtime = _loc8_.durationConfig.duration / 1000;
            }
         }
         this._material = new Vector.<ConfigOutputDTO>();
         for each(_loc6_ in this._config.constructionPhases)
         {
            for each(_loc5_ in _loc6_.listEntryOutputs)
            {
               if(_loc5_.goodConfig != null && Boolean(_loc5_.outputAmount))
               {
                  this._material.push(_loc5_);
               }
            }
         }
         this._products = new Vector.<ConfigGoodDTO>();
         for each(_loc7_ in this._config.activePhases)
         {
            for each(_loc10_ in _loc7_.listEntryOutputs)
            {
               if(_loc7_.phaseType != ServerPhaseTypes.PRODUCTION_START)
               {
                  if(_loc10_.goodConfig != null && !_loc10_.goodConfig.isEventGood)
                  {
                     this._products.push(_loc10_.goodConfig);
                  }
               }
            }
         }
         if(_loc1_ == ServerTagConstants.SHOP)
         {
            if(this._shopProducts != null)
            {
               this._products = this._shopProducts;
            }
         }
         this._consequences = new Vector.<ConfigOutputDTO>();
         this._consequences = this._config.globalBuffs;
         this._specialHighlighting = this._config.specialHighlighting;
         this._residents = this.configObj.residents;
         this._residentsMax = this.configObj.maxResidents;
         this._minOutput = Math.abs(Math.ceil(this._baseOutput * 0.25));
         this._maxOutput = Math.abs(this._baseOutput);
      }
      
      public function get configObj() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      public function get unlockLvl() : int
      {
         return this._unlockLvl;
      }
      
      public function get price() : Number
      {
         if(this.buyWithRC)
         {
            return this.priceRC;
         }
         return this.priceVC;
      }
      
      public function get priceVC() : Number
      {
         return Math.abs(this._price);
      }
      
      public function get priceRC() : Number
      {
         var _loc1_:Number = NaN;
         if(FeaturedEventProxy.isMysteryBuilding(this.configObj))
         {
            return Math.abs(this._priceRCBase);
         }
         var _loc2_:Number = this._config.unlockLevel;
         var _loc3_:Number = this.permission.permissionsBought + 1;
         _loc1_ = Math.ceil(12.5 * (100 * Math.pow(2,0.9 * (_loc3_ - 2)) / (Math.pow(2,0.9 * (_loc3_ - 2)) + 20) + 0.01 * _loc3_)) + this._priceRCBase;
         _loc1_ = Math.abs(_loc1_);
         _loc1_ = Math.ceil(_loc1_);
         if(_loc1_ < 1)
         {
            _loc1_ = 1;
         }
         return _loc1_;
      }
      
      public function get buildPermissionAmount() : int
      {
         return this._buildPermissionAmount;
      }
      
      public function get output() : Number
      {
         return this._baseOutput;
      }
      
      public function get baseOutPutType() : String
      {
         return this._baseOutputType;
      }
      
      public function get runtime() : Number
      {
         return this._runtime;
      }
      
      public function get restrictions() : Vector.<ConfigGroundRestrictionDTO>
      {
         return this._restrictions;
      }
      
      public function get material() : Vector.<ConfigOutputDTO>
      {
         return this._material;
      }
      
      public function get consequences() : Vector.<ConfigOutputDTO>
      {
         return this._consequences;
      }
      
      public function get products() : Vector.<ConfigGoodDTO>
      {
         return this._products;
      }
      
      public function get specialHighlighting() : Boolean
      {
         return this._specialHighlighting;
      }
      
      public function set specialHighlighting(param1:Boolean) : void
      {
         this._specialHighlighting = param1;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._locked = param1;
      }
      
      public function get permissionBuyable() : Boolean
      {
         if(this._permissionLockedByEvent)
         {
            return false;
         }
         return this._permissionBuyable;
      }
      
      public function get permission() : PlayfieldItemPermissionDTO
      {
         return this._permission;
      }
      
      public function set permission(param1:PlayfieldItemPermissionDTO) : void
      {
         this._permission = param1;
         this._buildPermissionAmount = this._permission.permissionsLeft;
      }
      
      public function get userCanAfford() : Boolean
      {
         if(this.buyWithRC)
         {
            return this._userRC >= this.priceRC;
         }
         return this._userVC >= this.priceVC;
      }
      
      public function get buyWithRC() : Boolean
      {
         return this.state == STATE_BUY_MORE_WITH_RC;
      }
      
      public function get isItemNew() : Boolean
      {
         if(this.locked)
         {
            return false;
         }
         return this._isItemNew;
      }
      
      public function set isItemNew(param1:Boolean) : void
      {
         this._isItemNew = param1;
      }
      
      public function get minOutput() : Number
      {
         return this._minOutput;
      }
      
      public function get maxOutput() : Number
      {
         return this._maxOutput;
      }
      
      public function get residents() : Vector.<ResidentVo>
      {
         return this._residents;
      }
      
      public function get residentsMax() : Number
      {
         return this._residentsMax;
      }
      
      public function get permissionLockedByEvent() : Boolean
      {
         return this._permissionLockedByEvent;
      }
      
      public function set permissionLockedByEvent(param1:Boolean) : void
      {
         this._permissionLockedByEvent = param1;
      }
      
      public function get userVC() : Number
      {
         return this._userVC;
      }
      
      public function set userVC(param1:Number) : void
      {
         this._userVC = param1;
      }
      
      public function get userRC() : Number
      {
         return this._userRC;
      }
      
      public function set userRC(param1:Number) : void
      {
         this._userRC = param1;
      }
      
      public function get state() : String
      {
         if(this._permission.config.initialPermissions == -1)
         {
            return STATE_DOESNT_NEED_PERMISSION;
         }
         if(this._permission.permissionsLeft > 0)
         {
            if(this.configObj.isPremium)
            {
               return STATE_FULLY_CONSTRUCTED_AVAILABLE;
            }
            return STATE_PERMISSION_AVAILABLE;
         }
         if(this._permission.permissionsLeft == 0)
         {
            if(this._permission.permissionsBought < this._permission.config.buyCap || this._permission.config.buyCap == -1)
            {
               return STATE_BUY_MORE_WITH_RC;
            }
            return STATE_NOT_AVAILABLE;
         }
         throw new RamaCityError("Unknown State for Blueprint");
      }
      
      public function get hasConstructionSteps() : Boolean
      {
         var _loc1_:ConfigPhaseDTO = null;
         if(this.specialHighlighting)
         {
            return false;
         }
         for each(_loc1_ in this.configObj.constructionPhases)
         {
            if(_loc1_.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
            {
               return true;
            }
         }
         return false;
      }
   }
}

