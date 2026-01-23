package net.bigpoint.cityrama.model.assistants.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class RentCollectorVo
   {
      
      private var _configAssist:ConfigAssistDTO;
      
      private var _saleActive:Boolean;
      
      private var _realCurrencyStock:Number;
      
      private var _price:Number;
      
      private var _paymentPrice:String = "";
      
      private var _externalPackKey:String = "";
      
      public function RentCollectorVo(param1:ConfigAssistDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(_loc3_ || Boolean(param1))
            {
               addr0034:
               if(param1)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this._configAssist = param1;
                  }
               }
            }
            return;
         }
         §§goto(addr0034);
      }
      
      public function get backgroundGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_rentCollector");
         §§push("collector_bg_");
         if(_loc1_ || _loc1_)
         {
            §§push(§§pop() + this._configAssist.gfxId);
         }
         return new §§pop().BriskDynaVo(§§pop(),§§pop());
      }
      
      public function get isExternalPaymentPack() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._paymentPrice);
            if(!_loc1_)
            {
               §§push("");
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(!_loc1_)
                           {
                              §§pop();
                              §§goto(addr005c);
                           }
                           §§goto(addr005b);
                        }
                     }
                  }
                  addr005c:
                  §§goto(addr0055);
               }
               addr0055:
               §§goto(addr0053);
            }
            addr0053:
            §§goto(addr004f);
         }
         addr004f:
         §§push(this._externalPackKey == "");
         if(!_loc1_)
         {
            addr005b:
            return !§§pop();
         }
      }
      
      public function get headerText() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(LocaUtils);
         §§push(this.runtime);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() / 1000);
         }
         §§push(§§pop().getDurationH(§§pop()));
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc1_ < 72)
            {
               if(_loc2_ || _loc1_)
               {
                  addr006d:
                  §§push(LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificHours.capital",[_loc1_]));
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0082:
                  §§push(LocaUtils);
                  §§push("rcl.misc.timeconventions");
                  §§push("rcl.misc.timeconventions.specificDays.capital");
                  §§push(LocaUtils);
                  §§push(this.runtime);
                  if(_loc2_)
                  {
                     §§push(§§pop() / 1000);
                  }
                  return §§pop().getString(§§pop(),§§pop(),[§§pop().getDaysFromSeconds(§§pop())]);
               }
               return §§pop();
            }
            §§goto(addr0082);
         }
         §§goto(addr006d);
      }
      
      public function get iconGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_rentCollector");
         §§push("rentCollector_big_");
         if(_loc1_ || _loc1_)
         {
            §§push(§§pop() + this._configAssist.gfxId);
         }
         return new §§pop().BriskDynaVo(§§pop(),§§pop());
      }
      
      public function get flavourText() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(LocaUtils);
         §§push("rcl.booklayer.rentCollector");
         §§push("rcl.booklayer.rentCollector.flavour.");
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() + this._configAssist.locaId);
         }
         return §§pop().getString(§§pop(),§§pop());
      }
      
      public function get isAffordable() : Boolean
      {
         return this.realCurrencyStock >= this.price;
      }
      
      public function get paymentHoverText() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this.saleActive)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr0035:
                  §§push(LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.payment.hover.sale",[this.paymentPrice]));
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004d:
                  return LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.payment.hover",[this.paymentPrice]);
               }
               return §§pop();
            }
            §§goto(addr004d);
         }
         §§goto(addr0035);
      }
      
      public function get assistConfigId() : Number
      {
         return this._configAssist.id;
      }
      
      public function get runtime() : Number
      {
         return this._configAssist.lifetime;
      }
      
      public function get saleActive() : Boolean
      {
         return this._saleActive;
      }
      
      public function set saleActive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._saleActive = param1;
         }
      }
      
      public function get realCurrencyStock() : Number
      {
         return this._realCurrencyStock;
      }
      
      public function set realCurrencyStock(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._realCurrencyStock = param1;
         }
      }
      
      public function get paymentPrice() : String
      {
         return this._paymentPrice;
      }
      
      public function set paymentPrice(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._paymentPrice = param1;
         }
      }
      
      public function set price(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._price = param1;
         }
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function get externalPackKey() : String
      {
         return this._externalPackKey;
      }
      
      public function set externalPackKey(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._externalPackKey = param1;
         }
      }
   }
}

