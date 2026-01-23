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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         STATE_PERMISSION_AVAILABLE = "PERMISSION_AVAILABLE";
         if(_loc2_)
         {
            STATE_FULLY_CONSTRUCTED_AVAILABLE = "FULLY_CONSTRUCTED_AVAILABLE";
            if(!_loc1_)
            {
               STATE_BUY_MORE_WITH_RC = "BUY_MORE_WITH_RC";
               if(_loc2_ || BlueprintVo)
               {
                  addr0067:
                  STATE_NOT_AVAILABLE = "NOT_AVAILABLE";
                  if(_loc2_)
                  {
                     STATE_DOESNT_NEED_PERMISSION = "STATE_DOESNT_NEED_PERMISSION";
                  }
               }
               §§goto(addr007f);
            }
         }
         §§goto(addr0067);
      }
      addr007f:
      
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
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(_loc10_)
         {
            super();
            if(!_loc9_)
            {
               this._config = param1;
               if(_loc10_)
               {
                  this._permission = param2;
                  if(!_loc9_)
                  {
                     this._buildPermissionAmount = this._permission.permissionsLeft;
                     if(_loc10_)
                     {
                        addr004a:
                        this._restrictions = param4;
                        if(_loc10_)
                        {
                           this._userVC = param5;
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              addr006b:
                              this._userRC = param6;
                              if(_loc10_)
                              {
                                 this._shopProducts = param7;
                                 if(!_loc9_)
                                 {
                                    addr0083:
                                    if(this._config.permissionConfig != null)
                                    {
                                       if(_loc10_ || Boolean(param3))
                                       {
                                          addr00a9:
                                          §§push(this);
                                          if(_loc10_)
                                          {
                                             §§push(this._config.permissionConfig.buyCap > 0);
                                             if(_loc10_ || Boolean(this))
                                             {
                                                var _temp_5:* = §§pop();
                                                §§push(_temp_5);
                                                if(_temp_5)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      addr00d6:
                                                      §§pop();
                                                      addr00d7:
                                                      §§push(this._permissionLockedByEvent);
                                                      if(!(_loc9_ && Boolean(param2)))
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                }
                                                §§pop()._permissionBuyable = §§pop();
                                                if(!(_loc9_ && Boolean(this)))
                                                {
                                                   addr0118:
                                                   this.locked = this._config.unlockLevel > param3;
                                                   if(!_loc9_)
                                                   {
                                                      addr012b:
                                                      this._isItemNew = param8;
                                                      if(!(_loc9_ && Boolean(param3)))
                                                      {
                                                         addr013f:
                                                         this.buildVo();
                                                      }
                                                      §§goto(addr0145);
                                                   }
                                                   §§goto(addr013f);
                                                }
                                                addr0145:
                                                return;
                                             }
                                             §§goto(addr00d6);
                                          }
                                          §§goto(addr00d7);
                                       }
                                    }
                                    else
                                    {
                                       this._permissionBuyable = false;
                                       if(!_loc9_)
                                       {
                                          §§goto(addr0118);
                                       }
                                    }
                                    §§goto(addr012b);
                                 }
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr0118);
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr004a);
               }
               §§goto(addr0118);
            }
            §§goto(addr006b);
         }
         §§goto(addr00a9);
      }
      
      private function buildVo() : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:Vector.<ConfigPhaseDTO> = null;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         if(!(_loc15_ && Boolean(_loc2_)))
         {
            this._unlockLvl = this._config.unlockLevel;
         }
         var _loc11_:* = 0;
         var _loc12_:* = this._config.tags;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc12_,_loc11_));
            if(!_loc16_)
            {
               break;
            }
            if(§§pop())
            {
               §§push(§§nextvalue(_loc11_,_loc12_));
               if(!_loc15_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc16_ || Boolean(_loc1_)))
                  {
                     continue;
                  }
                  §§push(_loc2_);
               }
               loop1:
               while(true)
               {
                  var _loc13_:* = §§pop();
                  if(_loc16_ || Boolean(_loc1_))
                  {
                     §§push(ServerTagConstants.SHOP);
                     if(!_loc15_)
                     {
                        §§push(_loc13_);
                        if(_loc16_ || Boolean(this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc16_)
                              {
                                 §§push(0);
                                 if(_loc15_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0160:
                                 §§push(2);
                                 if(_loc16_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerTagConstants.RESIDENTIAL);
                              if(_loc16_)
                              {
                                 §§push(_loc13_);
                                 if(!_loc15_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc16_ || Boolean(_loc1_))
                                       {
                                          §§push(1);
                                          if(_loc15_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0177:
                                          §§push(3);
                                          if(_loc15_ && Boolean(this))
                                          {
                                          }
                                       }
                                       addr0197:
                                       switch(§§pop())
                                       {
                                          case 0:
                                          case 1:
                                          case 2:
                                          case 3:
                                             §§push(_loc2_);
                                             if(!(_loc15_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop());
                                                if(_loc16_)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             break;
                                          default:
                                             continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.PRODUCTION);
                                       if(!(_loc15_ && Boolean(_loc3_)))
                                       {
                                          addr0146:
                                          §§push(_loc13_);
                                          if(!_loc15_)
                                          {
                                             addr014e:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc15_ && Boolean(this)))
                                                {
                                                   §§goto(addr0160);
                                                }
                                                else
                                                {
                                                   §§goto(addr0177);
                                                }
                                             }
                                             else
                                             {
                                                addr0173:
                                                addr0171:
                                                if(ServerTagConstants.GROUND === _loc13_)
                                                {
                                                   §§goto(addr0177);
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                }
                                                §§goto(addr0197);
                                             }
                                             §§goto(addr0177);
                                          }
                                          §§goto(addr0173);
                                       }
                                       §§goto(addr0171);
                                    }
                                    §§goto(addr0177);
                                 }
                                 §§goto(addr014e);
                              }
                              §§goto(addr0146);
                           }
                           §§goto(addr0197);
                        }
                        §§goto(addr0173);
                     }
                     §§goto(addr0171);
                  }
                  §§goto(addr0177);
               }
               _loc1_ = §§pop();
               if(_loc16_ || Boolean(this))
               {
               }
               continue;
            }
            if(_loc16_ || Boolean(_loc1_))
            {
               if(_loc16_)
               {
                  if(_loc16_)
                  {
                     §§push(_loc1_);
                     if(!_loc15_)
                     {
                        §§push(ServerTagConstants.GROUND);
                        if(_loc16_ || Boolean(_loc3_))
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!_loc15_)
                              {
                                 this._price = 0;
                                 if(!(_loc15_ && Boolean(_loc1_)))
                                 {
                                    §§push(this._config);
                                    if(!(_loc15_ && Boolean(_loc3_)))
                                    {
                                       if(§§pop().constructionPhases.length > 0)
                                       {
                                          if(_loc16_ || Boolean(_loc1_))
                                          {
                                             addr023b:
                                             §§push(this._config);
                                             if(!_loc15_)
                                             {
                                                addr0245:
                                                §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                if(!(_loc15_ && Boolean(this)))
                                                {
                                                   §§push(§§pop().getFirstPhaseByType(§§pop()));
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop().listEntryOutputs.length > 0);
                                                      if(!(_loc15_ && Boolean(this)))
                                                      {
                                                         var _temp_10:* = §§pop();
                                                         §§push(_temp_10);
                                                         if(_temp_10)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               addr0284:
                                                               §§pop();
                                                               if(!(_loc15_ && Boolean(this)))
                                                               {
                                                                  §§push(this._config);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                                     if(!(_loc15_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr02c5:
                                                                        addr02b5:
                                                                        if(Boolean(§§pop().getFirstPhaseByType(§§pop()).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY)))
                                                                        {
                                                                           if(_loc16_ || Boolean(_loc2_))
                                                                           {
                                                                              this._price = this._config.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY).outputAmount;
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr0301:
                                                                                 this._priceRCBase = this._config.baseValueForRCConstructionCost;
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    addr03d6:
                                                                                    §§push(this._config);
                                                                                    if(!(_loc15_ && Boolean(this)))
                                                                                    {
                                                                                       addr03e8:
                                                                                       if(§§pop().activePhases.length != 0)
                                                                                       {
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(ServerTagConstants.RESIDENTIAL);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr0415:
                                                                                                         addr0419:
                                                                                                         addr041f:
                                                                                                         _loc8_ = this._config.getAllPhasesByType(ServerPhaseTypes.RESIDENTIAL)[0];
                                                                                                         if(_loc8_ != null)
                                                                                                         {
                                                                                                            if(!(_loc15_ && Boolean(_loc1_)))
                                                                                                            {
                                                                                                               _loc11_ = 0;
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  for each(_loc9_ in _loc8_.listEntryOutputs)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.type);
                                                                                                                     if(_loc16_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§push(ServerOutputConstants.RESOURCE);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           if(§§pop() != §§pop())
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              §§push(_loc9_.resourceConfig);
                                                                                                                              if(_loc16_ || Boolean(_loc1_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == null);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       addr04c2:
                                                                                                                                       var _temp_21:* = §§pop();
                                                                                                                                       §§push(_temp_21);
                                                                                                                                       if(_temp_21)
                                                                                                                                       {
                                                                                                                                          if(!(_loc15_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr04d5:
                                                                                                                                             §§pop();
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                addr04f8:
                                                                                                                                                addr04e1:
                                                                                                                                                addr04dc:
                                                                                                                                                addr04e8:
                                                                                                                                                addr04e3:
                                                                                                                                                §§push(_loc9_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE);
                                                                                                                                                if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                                                {
                                                                                                                                                   addr04f7:
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                                                   {
                                                                                                                                                      this._baseOutput = _loc9_.outputAmount;
                                                                                                                                                      if(!(_loc16_ || Boolean(_loc2_)))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   this._baseOutputType = _loc9_.resourceConfig.type;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr04f7);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04f8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04d5);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04c2);
                                                                                                                              }
                                                                                                                              §§goto(addr04e1);
                                                                                                                           }
                                                                                                                           §§goto(addr04dc);
                                                                                                                        }
                                                                                                                        §§goto(addr04e8);
                                                                                                                     }
                                                                                                                     §§goto(addr04e3);
                                                                                                                  }
                                                                                                               }
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr0592:
                                                                                                                  §§push(this);
                                                                                                                  §§push(_loc8_.durationConfig.duration);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / 1000);
                                                                                                                  }
                                                                                                                  §§pop()._runtime = §§pop();
                                                                                                               }
                                                                                                               addr05a9:
                                                                                                               this._material = new Vector.<ConfigOutputDTO>();
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr05bd:
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr05cd:
                                                                                                                        §§push(this._config);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           _loc12_ = §§pop().constructionPhases;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§hasnext(_loc12_,_loc11_));
                                                                                                                              if(!(_loc16_ || Boolean(_loc1_)))
                                                                                                                              {
                                                                                                                                 break loop0;
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 _loc6_ = §§nextvalue(_loc11_,_loc12_);
                                                                                                                                 if(_loc16_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    _loc13_ = 0;
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       for each(_loc5_ in _loc6_.listEntryOutputs)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.goodConfig == null);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             if(_loc16_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                addr0635:
                                                                                                                                                var _temp_40:* = §§pop();
                                                                                                                                                §§push(_temp_40);
                                                                                                                                                if(_temp_40)
                                                                                                                                                {
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc16_ || Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr0655:
                                                                                                                                                         if(!Boolean(_loc5_.outputAmount))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      this._material.push(_loc5_);
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr0655);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0635);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!(_loc15_ && Boolean(_loc1_)))
                                                                                                                              {
                                                                                                                                 if(!(_loc15_ && Boolean(_loc1_)))
                                                                                                                                 {
                                                                                                                                    addr06a6:
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       addr06ae:
                                                                                                                                       this._products = new Vector.<ConfigGoodDTO>();
                                                                                                                                       if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          addr06cd:
                                                                                                                                          _loc11_ = 0;
                                                                                                                                          if(_loc16_ || Boolean(_loc2_))
                                                                                                                                          {
                                                                                                                                             addr06e1:
                                                                                                                                             _loc12_ = this._config.activePhases;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§hasnext(_loc12_,_loc11_));
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             addr07ba:
                                                                                                                                             addr07b3:
                                                                                                                                          }
                                                                                                                                          §§goto(addr07bc);
                                                                                                                                       }
                                                                                                                                       §§goto(addr08a3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0859);
                                                                                                                                 }
                                                                                                                                 addr07bc:
                                                                                                                                 if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    addr07cc:
                                                                                                                                    addr07d2:
                                                                                                                                    addr07cd:
                                                                                                                                    if(_loc1_ == ServerTagConstants.SHOP)
                                                                                                                                    {
                                                                                                                                       if(_loc16_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          if(this._shopProducts != null)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                this._products = this._shopProducts;
                                                                                                                                                if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0809);
                                                                                                                                                }
                                                                                                                                                §§goto(addr087e);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0836);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0809);
                                                                                                                                       }
                                                                                                                                       §§goto(addr087e);
                                                                                                                                    }
                                                                                                                                    addr0809:
                                                                                                                                    this._consequences = new Vector.<ConfigOutputDTO>();
                                                                                                                                    if(!(_loc15_ && Boolean(_loc1_)))
                                                                                                                                    {
                                                                                                                                       addr0825:
                                                                                                                                       this._consequences = this._config.globalBuffs;
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          addr0836:
                                                                                                                                          this._specialHighlighting = this._config.specialHighlighting;
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             addr0847:
                                                                                                                                             this._residents = this.configObj.residents;
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                addr0859:
                                                                                                                                                this._residentsMax = this.configObj.maxResidents;
                                                                                                                                                if(_loc16_ || Boolean(_loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr087e);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr08a3);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0859);
                                                                                                                                       }
                                                                                                                                       addr087e:
                                                                                                                                       this._minOutput = Math.abs(Math.ceil(this._baseOutput * 0.25));
                                                                                                                                       if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          addr08a3:
                                                                                                                                          this._maxOutput = Math.abs(this._baseOutput);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr08b2);
                                                                                                                                 }
                                                                                                                                 addr08b2:
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr07ba);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr06e1);
                                                                                                                     }
                                                                                                                     §§goto(addr06a6);
                                                                                                                  }
                                                                                                                  §§goto(addr06cd);
                                                                                                               }
                                                                                                               §§goto(addr07cc);
                                                                                                            }
                                                                                                         }
                                                                                                         else if(_loc1_ == ServerTagConstants.PRODUCTION)
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               _loc8_ = this._config.getAllPhasesByType(ServerPhaseTypes.PRODUCTION_START)[0];
                                                                                                               if(_loc8_ != null)
                                                                                                               {
                                                                                                                  if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     this._baseOutput = _loc8_.getListEntryOutputByType(ServerOutputConstants.GOOD).outputAmount;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0592);
                                                                                                            }
                                                                                                            §§goto(addr05a9);
                                                                                                         }
                                                                                                         §§goto(addr0592);
                                                                                                      }
                                                                                                      §§goto(addr087e);
                                                                                                   }
                                                                                                   §§goto(addr05a9);
                                                                                                }
                                                                                                §§goto(addr07d2);
                                                                                             }
                                                                                             §§goto(addr07cd);
                                                                                          }
                                                                                          §§goto(addr0415);
                                                                                       }
                                                                                       §§goto(addr05a9);
                                                                                    }
                                                                                    §§goto(addr0419);
                                                                                 }
                                                                                 §§goto(addr0836);
                                                                              }
                                                                              §§goto(addr0847);
                                                                           }
                                                                           §§goto(addr06ae);
                                                                        }
                                                                        §§goto(addr0301);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr032d:
                                                                        _loc3_ = §§pop().getAllPhasesByType(§§pop());
                                                                        if(!(_loc15_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(_loc3_ == null);
                                                                           if(!(_loc15_ && Boolean(this)))
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!(_loc15_ && Boolean(_loc2_)))
                                                                              {
                                                                                 var _temp_47:* = §§pop();
                                                                                 §§push(_temp_47);
                                                                                 if(_temp_47)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc16_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr0383:
                                                                                          if(_loc3_.length > 0)
                                                                                          {
                                                                                             addr0387:
                                                                                             _loc4_ = _loc3_[0].getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                                                             if(_loc4_ != null)
                                                                                             {
                                                                                                if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   this._price = _loc4_.outputAmount;
                                                                                                   if(_loc15_ && Boolean(_loc1_))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                this._price = 0;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr03d6);
                                                                                       }
                                                                                       §§goto(addr0387);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0383);
                                                                        }
                                                                        §§goto(addr0387);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0321:
                                                                     §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§goto(addr032d);
                                                                     }
                                                                  }
                                                                  §§goto(addr041f);
                                                               }
                                                               §§goto(addr0825);
                                                            }
                                                         }
                                                         §§goto(addr02c5);
                                                      }
                                                      §§goto(addr0284);
                                                   }
                                                   §§goto(addr02b5);
                                                }
                                                §§goto(addr032d);
                                             }
                                             §§goto(addr03e8);
                                          }
                                          §§goto(addr0836);
                                       }
                                       §§goto(addr03d6);
                                    }
                                    §§goto(addr0245);
                                 }
                                 §§goto(addr05bd);
                              }
                              §§goto(addr023b);
                           }
                           else
                           {
                              §§push(this._config);
                              if(_loc16_)
                              {
                                 §§goto(addr0321);
                              }
                           }
                           §§goto(addr03e8);
                        }
                        §§goto(addr07d2);
                     }
                     §§goto(addr07cd);
                  }
                  §§goto(addr0836);
               }
               §§goto(addr05cd);
            }
            §§goto(addr07ba);
         }
         while(§§pop())
         {
            _loc7_ = §§nextvalue(_loc11_,_loc12_);
            if(!_loc15_)
            {
               _loc13_ = 0;
               if(_loc16_ || Boolean(this))
               {
                  for each(_loc10_ in _loc7_.listEntryOutputs)
                  {
                     if(_loc16_)
                     {
                        if(_loc7_.phaseType == ServerPhaseTypes.PRODUCTION_START)
                        {
                           continue;
                        }
                        if(_loc16_ || Boolean(_loc2_))
                        {
                           §§push(_loc10_.goodConfig);
                           if(_loc16_)
                           {
                              §§push(§§pop() == null);
                              if(!_loc15_)
                              {
                                 §§push(!§§pop());
                                 if(_loc16_ || Boolean(_loc1_))
                                 {
                                    addr0769:
                                    var _temp_64:* = §§pop();
                                    §§push(_temp_64);
                                    if(_temp_64)
                                    {
                                       if(!(_loc15_ && Boolean(this)))
                                       {
                                          addr077c:
                                          §§pop();
                                          if(_loc16_)
                                          {
                                             addr0792:
                                             addr0788:
                                             addr0783:
                                             §§push(_loc10_.goodConfig.isEventGood);
                                             if(_loc16_)
                                             {
                                                addr0791:
                                                §§push(!§§pop());
                                             }
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(!_loc16_)
                                             {
                                                continue;
                                             }
                                          }
                                          addr079c:
                                          this._products.push(_loc10_.goodConfig);
                                          continue;
                                       }
                                       §§goto(addr0791);
                                    }
                                    §§goto(addr0792);
                                 }
                                 §§goto(addr077c);
                              }
                              §§goto(addr0769);
                           }
                           §§goto(addr0788);
                        }
                        §§goto(addr079c);
                     }
                     §§goto(addr0783);
                  }
               }
            }
            §§goto(addr07b3);
         }
         §§goto(addr07ba);
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this.buyWithRC)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr0035:
                  §§push(this.priceRC);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0047:
                  return this.priceVC;
               }
               return §§pop();
            }
            §§goto(addr0047);
         }
         §§goto(addr0035);
      }
      
      public function get priceVC() : Number
      {
         return Math.abs(this._price);
      }
      
      public function get priceRC() : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(!_loc4_)
         {
            if(FeaturedEventProxy.isMysteryBuilding(this.configObj))
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  §§goto(addr0039);
               }
            }
            §§push(this._config.unlockLevel);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            §§push(this.permission.permissionsBought + 1);
            if(!_loc4_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(Math.ceil(12.5 * (100 * Math.pow(2,0.9 * (_loc3_ - 2)) / (Math.pow(2,0.9 * (_loc3_ - 2)) + 20) + 0.01 * _loc3_)) + this._priceRCBase);
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc1_ = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Math.abs(_loc1_));
                     if(_loc5_)
                     {
                        _loc1_ = §§pop();
                        if(!_loc4_)
                        {
                           addr00eb:
                           §§push(Math.ceil(_loc1_));
                           if(_loc5_ || _loc3_)
                           {
                              _loc1_ = §§pop();
                              if(!_loc4_)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    addr0123:
                                    if(§§pop() < 1)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr0137);
                                       }
                                    }
                                    §§goto(addr0141);
                                 }
                                 §§goto(addr0140);
                              }
                              §§goto(addr0141);
                           }
                           §§goto(addr0140);
                        }
                        addr0137:
                        §§push(1);
                        if(_loc5_)
                        {
                           addr0140:
                           _loc1_ = §§pop();
                           addr0141:
                           return _loc1_;
                        }
                     }
                     §§goto(addr0123);
                  }
                  §§goto(addr0141);
               }
               §§goto(addr0123);
            }
            §§goto(addr00eb);
         }
         addr0039:
         return Math.abs(this._priceRCBase);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._specialHighlighting = param1;
         }
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function set locked(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._locked = param1;
         }
      }
      
      public function get permissionBuyable() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._permissionLockedByEvent);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0049:
                     §§push(this._permissionBuyable);
                  }
                  §§goto(addr004d);
               }
               §§goto(addr0049);
            }
            addr004d:
            return §§pop();
         }
         §§goto(addr0049);
      }
      
      public function get permission() : PlayfieldItemPermissionDTO
      {
         return this._permission;
      }
      
      public function set permission(param1:PlayfieldItemPermissionDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._permission = param1;
            if(!_loc2_)
            {
               this._buildPermissionAmount = this._permission.permissionsLeft;
            }
         }
      }
      
      public function get userCanAfford() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.buyWithRC);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr004d:
                     §§push(this._userRC);
                     if(_loc2_)
                     {
                        §§push(this.priceRC);
                        if(!_loc1_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(!_loc1_)
                           {
                              §§goto(addr0065);
                           }
                        }
                        else
                        {
                           addr006e:
                           return §§pop() >= §§pop();
                        }
                        return §§pop();
                     }
                     addr006a:
                     §§push(this.priceVC);
                     §§goto(addr006e);
                  }
                  else
                  {
                     addr0066:
                     §§push(this._userVC);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr0066);
            }
            addr0065:
            return §§pop();
         }
         §§goto(addr004d);
      }
      
      public function get buyWithRC() : Boolean
      {
         return this.state == STATE_BUY_MORE_WITH_RC;
      }
      
      public function get isItemNew() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.locked);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0041:
                     §§push(false);
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr004f);
                     }
                  }
                  else
                  {
                     addr0050:
                     return this._isItemNew;
                  }
                  return §§pop();
               }
               §§goto(addr0050);
            }
            addr004f:
            return §§pop();
         }
         §§goto(addr0041);
      }
      
      public function set isItemNew(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isItemNew = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._permissionLockedByEvent = param1;
         }
      }
      
      public function get userVC() : Number
      {
         return this._userVC;
      }
      
      public function set userVC(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._userVC = param1;
         }
      }
      
      public function get userRC() : Number
      {
         return this._userRC;
      }
      
      public function set userRC(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._userRC = param1;
         }
      }
      
      public function get state() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._permission);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§pop().config);
               if(_loc1_)
               {
                  §§push(§§pop().initialPermissions);
                  if(_loc1_)
                  {
                     §§push(-1);
                     if(_loc1_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(STATE_DOESNT_NEED_PERMISSION);
                              if(!(_loc2_ && _loc2_))
                              {
                                 return §§pop();
                              }
                              §§goto(addr00cb);
                           }
                        }
                        else
                        {
                           §§push(this._permission);
                           if(!_loc2_)
                           {
                              §§push(§§pop().permissionsLeft);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(0);
                                 if(!_loc2_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(this.configObj.isPremium);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc1_)
                                                {
                                                   addr00bb:
                                                   §§push(STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr00cb:
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr014b);
                                                }
                                             }
                                             else
                                             {
                                                §§push(STATE_PERMISSION_AVAILABLE);
                                                if(!_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             §§goto(addr017a);
                                          }
                                          else
                                          {
                                             addr0133:
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             if(!_temp_9)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      addr014b:
                                                      §§goto(addr0161);
                                                   }
                                                   §§goto(addr016a);
                                                }
                                             }
                                          }
                                          §§goto(addr0161);
                                       }
                                       §§goto(addr00bb);
                                    }
                                    else
                                    {
                                       §§push(this._permission);
                                       if(_loc1_)
                                       {
                                          §§goto(addr00fd);
                                       }
                                       §§goto(addr0117);
                                    }
                                 }
                                 addr00fd:
                              }
                              §§goto(addr00fb);
                           }
                           §§goto(addr0117);
                        }
                        §§goto(addr0180);
                     }
                     §§goto(addr00fd);
                  }
                  addr00fb:
                  if(§§pop().permissionsLeft == 0)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this._permission);
                        if(_loc1_)
                        {
                           addr0117:
                           §§push(§§pop().permissionsBought);
                           if(!_loc2_)
                           {
                              §§push(this._permission.config.buyCap);
                              if(_loc1_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc1_)
                                 {
                                    §§goto(addr0133);
                                 }
                                 addr0161:
                                 §§goto(addr0160);
                              }
                              addr0160:
                              §§goto(addr015e);
                           }
                           addr015e:
                           §§goto(addr0159);
                        }
                        addr0159:
                        §§goto(addr015b);
                     }
                     §§goto(addr0180);
                  }
                  §§goto(addr0184);
               }
               addr015b:
               if(this._permission.config.buyCap == -1)
               {
                  if(_loc2_)
                  {
                     addr0184:
                     throw new RamaCityError("Unknown State for Blueprint");
                  }
                  addr016a:
                  §§push(STATE_BUY_MORE_WITH_RC);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr017a:
                     return §§pop();
                  }
               }
               else
               {
                  addr0180:
                  return STATE_NOT_AVAILABLE;
               }
               return §§pop();
            }
            §§goto(addr0159);
         }
         §§goto(addr016a);
      }
      
      public function get hasConstructionSteps() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigPhaseDTO = null;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            §§push(this.specialHighlighting);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr004a);
                  }
               }
               §§goto(addr004b);
            }
            addr004a:
            return false;
         }
         addr004b:
         var _loc2_:int = 0;
         for each(_loc1_ in this.configObj.constructionPhases)
         {
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               if(_loc1_.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
               {
                  if(!_loc4_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
   }
}

