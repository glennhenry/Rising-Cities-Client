package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class ImprovementStoreListVo
   {
      
      private var _currencyType:String = "CURR_REAL";
      
      private var _price:Number = 0;
      
      private var _improvementPack:ImprovementBoosterpackVo;
      
      public function ImprovementStoreListVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function set currencyType(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._currencyType = param1;
         }
      }
      
      public function set improvementPack(param1:ImprovementBoosterpackVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._improvementPack = param1;
         }
      }
      
      public function set price(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._price = param1;
         }
      }
      
      public function get configId() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._improvementPack);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr003e);
                  }
               }
               §§goto(addr0043);
            }
            addr003e:
            return this._improvementPack.config.id;
         }
         addr0043:
         return NaN;
      }
      
      public function get price() : Number
      {
         return Math.abs(this._price);
      }
      
      public function get improvementPack() : ImprovementBoosterpackVo
      {
         return this._improvementPack;
      }
      
      public function get backgroundGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._currencyType == ServerResConst.RESOURCE_REALCURRENCY)
            {
               if(_loc1_ || _loc1_)
               {
                  return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_item_background_small_yellow");
               }
            }
         }
         return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_item_background_small_blue");
      }
      
      public function get miniIconGfx() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this._currencyType;
         if(!(_loc2_ && _loc2_))
         {
            §§push(ServerResConst.RESOURCE_REALCURRENCY);
            if(_loc3_ || Boolean(_loc1_))
            {
               §§push(_loc1_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc3_ || _loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr00bc:
                        §§push(1);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                     addr00db:
                     switch(§§pop())
                     {
                        case 0:
                           return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_mm");
                        case 1:
                           return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_cc");
                        default:
                           return null;
                     }
                  }
                  else
                  {
                     addr00b8:
                     addr00b7:
                     if(ServerResConst.RESOURCE_VIRTUALCURRENCY === _loc1_)
                     {
                        §§goto(addr00bc);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr00b8);
            }
            §§goto(addr00b7);
         }
         §§goto(addr00bc);
      }
      
      public function get itemGfx() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_improvementStore");
         §§push("improvementPack_");
         if(_loc2_)
         {
            §§push(§§pop() + this._improvementPack.gfxId);
            if(_loc2_ || _loc1_)
            {
               addr003d:
               §§push(§§pop() + "_small");
            }
            return new §§pop().BriskDynaVo(§§pop(),§§pop());
         }
         §§goto(addr003d);
      }
      
      public function get showSparkle() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._currencyType == ServerResConst.RESOURCE_REALCURRENCY)
            {
               if(_loc2_)
               {
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr002f:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr002f);
      }
      
      public function get priceText() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this.price);
      }
   }
}

