package net.bigpoint.cityrama.model.featuredEvent.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FeaturedMysteryBuildingVo
   {
      
      private var _mysteryConfigPlayfieldItem:ConfigPlayfieldItemDTO;
      
      private var _permissionAmount:uint = 0;
      
      private var _rcStock:Number = 0;
      
      private var _availabilityTimer:TimerBarComponentVo;
      
      private var _possibleOutcome:Vector.<ConfigPlayfieldItemDTO>;
      
      public function FeaturedMysteryBuildingVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function sortBuildings(param1:ConfigPlayfieldItemDTO, param2:ConfigPlayfieldItemDTO) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(isBuilding(param1));
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_ || Boolean(param1))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(!(_loc4_ && FeaturedMysteryBuildingVo))
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop();
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              §§push(isBuilding(param2));
                              if(_loc3_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc4_)
                                 {
                                    §§goto(addr0077);
                                 }
                              }
                              §§goto(addr0106);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr00d4);
                     }
                     addr0077:
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0097:
                           §§push(-1);
                           if(_loc3_ || FeaturedMysteryBuildingVo)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0117:
                           §§push(1);
                           if(!_loc3_)
                           {
                              §§goto(addr0121);
                           }
                        }
                        return §§pop();
                     }
                     §§push(isBuilding(param1));
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           addr00ca:
                           var _temp_9:* = §§pop();
                           addr00cb:
                           §§push(_temp_9);
                           if(_temp_9)
                           {
                              if(_loc3_)
                              {
                                 addr00d4:
                                 §§pop();
                                 if(!(_loc4_ && FeaturedMysteryBuildingVo))
                                 {
                                    addr0106:
                                    §§push(isBuilding(param2));
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr0105:
                                       §§push(§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc3_ || FeaturedMysteryBuildingVo)
                                       {
                                          §§goto(addr0117);
                                       }
                                       else
                                       {
                                          addr011f:
                                          §§push(0);
                                       }
                                       §§goto(addr0121);
                                    }
                                 }
                                 §§goto(addr011f);
                              }
                              §§goto(addr0105);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr00ca);
                     addr0121:
                     return §§pop();
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00ca);
            }
            §§goto(addr0106);
         }
         §§goto(addr0117);
      }
      
      private static function isBuilding(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(param1.tags.indexOf(ServerTagConstants.BUILDING) == -1);
         if(_loc2_ || FeaturedMysteryBuildingVo)
         {
            return !§§pop();
         }
      }
      
      public function get mysteryConfigPlayfieldItem() : ConfigPlayfieldItemDTO
      {
         return this._mysteryConfigPlayfieldItem;
      }
      
      public function set mysteryConfigPlayfieldItem(param1:ConfigPlayfieldItemDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._mysteryConfigPlayfieldItem = param1;
         }
      }
      
      public function get permissionAmount() : uint
      {
         return this._permissionAmount;
      }
      
      public function set permissionAmount(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._permissionAmount = param1;
         }
      }
      
      public function get rcStock() : Number
      {
         return this._rcStock;
      }
      
      public function set rcStock(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._rcStock = param1;
         }
      }
      
      public function get availabilityTimer() : TimerBarComponentVo
      {
         return this._availabilityTimer;
      }
      
      public function set availabilityTimer(param1:TimerBarComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._availabilityTimer = param1;
         }
      }
      
      public function get seasonGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.mysteryConfigPlayfieldItem)
            {
               if(!_loc2_)
               {
                  §§goto(addr002c);
               }
            }
            return null;
         }
         addr002c:
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_architect_featured");
         §§push("mystery_season_");
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() + this.mysteryConfigPlayfieldItem.gfxId);
         }
         return new §§pop().BriskDynaVo(§§pop(),§§pop());
      }
      
      public function set possibleOutcome(param1:Vector.<ConfigPlayfieldItemDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._possibleOutcome = param1;
            if(_loc2_ || Boolean(this))
            {
               addr003d:
               this._possibleOutcome.sort(sortBuildings);
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function get permissionPrice() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this.mysteryConfigPlayfieldItem)
            {
               if(!_loc1_)
               {
                  §§goto(addr0023);
               }
            }
            return 0;
         }
         addr0023:
         return Math.abs(this.mysteryConfigPlayfieldItem.baseValueForRCConstructionCost);
      }
      
      public function get possibleResult() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigPlayfieldItemDTO = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         if(_loc6_)
         {
            if(this._possibleOutcome)
            {
               addr0047:
               for each(_loc2_ in this._possibleOutcome)
               {
                  if(!_loc5_)
                  {
                     _loc1_.addItem(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
   }
}

