package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryCategoryVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryCashForActionVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryExternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackItemVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRentCollectorVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.ItemPurchaseEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryBonusCodeSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryCashForActionSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryExternalPackSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryInternalPackSkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryRealCurrencySkin;
   import net.bigpoint.cityrama.view.cityTreasury.ui.skins.CityTreasuryRentCollectorSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.supportClasses.SkinnableComponent;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public class CityTreasuryContentComponent extends SkinnableComponent
   {
      
      public static const TYPE_INTERNAL_PACK:String = "TYPE_INTERNAL_PACK";
      
      public static const TYPE_EXTERNAL_PACK:String = "TYPE_EXTERNAL_PACK";
      
      public static const TYPE_CASH_FOR_ACTION:String = "TYPE_CASH_FOR_ACTION";
      
      public static const TYPE_BONUS_CODE:String = "TYPE_BONUS_CODE";
      
      public static const TYPE_REAL_CURRENCY:String = "TYPE_REAL_CURRENCY";
      
      public static const TYPE_RENTCOLLECTOR:String = "TYPE_RENTCOLLECTOR";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         TYPE_INTERNAL_PACK = "TYPE_INTERNAL_PACK";
         if(_loc1_ || CityTreasuryContentComponent)
         {
            TYPE_EXTERNAL_PACK = "TYPE_EXTERNAL_PACK";
            if(!_loc2_)
            {
               TYPE_CASH_FOR_ACTION = "TYPE_CASH_FOR_ACTION";
               if(_loc1_ || _loc2_)
               {
                  addr004f:
                  TYPE_BONUS_CODE = "TYPE_BONUS_CODE";
                  if(!(_loc2_ && _loc2_))
                  {
                     TYPE_REAL_CURRENCY = "TYPE_REAL_CURRENCY";
                     if(!(_loc2_ && CityTreasuryContentComponent))
                     {
                        addr0085:
                        TYPE_RENTCOLLECTOR = "TYPE_RENTCOLLECTOR";
                        if(!_loc2_)
                        {
                           _skinParts = {
                              "packList":false,
                              "listHeaderLabel":false,
                              "packGfx":false,
                              "headerLabel":false,
                              "oldPriceLabel":false,
                              "purchaseButton":true,
                              "purchaseLabel":false,
                              "plusIcon":false,
                              "buttonIcon":false,
                              "priceLine":false,
                              "runtimeLabel":false,
                              "mainText":false,
                              "packContentList":false,
                              "packIconGfx":false,
                              "extraText":false,
                              "errorLabel":false,
                              "priceLabel":false
                           };
                           addr0093:
                        }
                     }
                     return;
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0085);
            }
            §§goto(addr004f);
         }
         §§goto(addr0093);
      }
      §§goto(addr0085);
      
      public var purchaseButton:MultistateButton;
      
      public var packList:List;
      
      public var listHeaderLabel:LocaLabel;
      
      public var mainText:LocaLabel;
      
      public var headerLabel:LocaLabel;
      
      public var packGfx:BriskImageDynaLib;
      
      public var packIconGfx:BriskImageDynaLib;
      
      public var purchaseLabel:LocaLabel;
      
      public var packContentList:List;
      
      public var errorLabel:LocaLabel;
      
      public var plusIcon:BriskImageDynaLib;
      
      public var priceLabel:LocaLabel;
      
      public var oldPriceLabel:LocaLabel;
      
      public var priceLine:Rect;
      
      public var buttonIcon:BriskImageDynaLib;
      
      public var extraText:LocaLabel;
      
      public var runtimeLabel:LocaLabel;
      
      private var _data:CityTreasuryCategoryVo;
      
      private var _isDirty:Boolean;
      
      private var _currentSelectedPackIndex:int = -1;
      
      public function CityTreasuryContentComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._data);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc1_)
                        {
                           addr0048:
                           §§pop();
                           if(_loc1_ || _loc1_)
                           {
                              §§push(this._isDirty);
                              if(_loc1_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr006d);
                                 }
                                 §§goto(addr0148);
                              }
                              §§goto(addr01b0);
                           }
                           §§goto(addr01cc);
                        }
                     }
                     addr006d:
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           this._isDirty = false;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0088:
                              §§push(this.purchaseButton);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(true);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§pop().enabled = §§pop();
                                    if(_loc1_)
                                    {
                                       §§push(this.purchaseButton);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr00c0:
                                          §§push(false);
                                          if(!_loc2_)
                                          {
                                             §§pop().useConfirmation = §§pop();
                                             if(!_loc2_)
                                             {
                                                §§push(this._data);
                                                if(_loc1_)
                                                {
                                                   §§push(§§pop().contentVo);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() is CityTreasuryRealCurrencyPackVo);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               this.handleRealCurrencyPackVo();
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  addr010c:
                                                                  §§push(this._data);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr011d:
                                                                     §§push(§§pop().contentVo);
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() is CityTreasuryInternalPackVo);
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           addr0148:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 addr0159:
                                                                                 §§push(this.purchaseButton);
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    addr016b:
                                                                                    §§pop().useConfirmation = true;
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       this.handleInternalPackVo();
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          addr0186:
                                                                                          §§push(this._data);
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             addr0197:
                                                                                             §§push(§§pop().contentVo);
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                §§push(§§pop() is CityTreasuryCashForActionVo);
                                                                                                if(_loc1_ || Boolean(this))
                                                                                                {
                                                                                                   addr01b0:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr01b9:
                                                                                                         this.handleCashForActionVo();
                                                                                                         if(_loc1_ || _loc1_)
                                                                                                         {
                                                                                                            addr01cc:
                                                                                                            §§push(this._data);
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop().contentVo);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() is CityTreasuryExternalPackVo);
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     addr01e6:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           this.handleExternalPackVo();
                                                                                                                           if(!(_loc2_ && _loc1_))
                                                                                                                           {
                                                                                                                              addr020a:
                                                                                                                              §§push(this._data);
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().contentVo);
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    addr021b:
                                                                                                                                    §§push(§§pop() is CityTreasuryRentCollectorVo);
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       addr0224:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc2_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr0235:
                                                                                                                                             this.handleRentCollectorVo();
                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr0248:
                                                                                                                                                §§push(this.purchaseButton);
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr0251:
                                                                                                                                                   §§pop().removeEventListener(MouseEvent.CLICK,this.handlePurchaseButtonClick);
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      this.purchaseButton.addEventListener(MouseEvent.CLICK,this.handlePurchaseButtonClick);
                                                                                                                                                      §§goto(addr0266);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0289);
                                                                                                                                                }
                                                                                                                                                addr0266:
                                                                                                                                                §§goto(addr0262);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0262);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0248);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0294);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0290);
                                                                                                                              }
                                                                                                                              §§goto(addr028d);
                                                                                                                           }
                                                                                                                           §§goto(addr0289);
                                                                                                                        }
                                                                                                                        §§goto(addr0262);
                                                                                                                     }
                                                                                                                     §§goto(addr020a);
                                                                                                                  }
                                                                                                                  §§goto(addr0294);
                                                                                                               }
                                                                                                               §§goto(addr021b);
                                                                                                            }
                                                                                                            §§goto(addr028d);
                                                                                                         }
                                                                                                         §§goto(addr0235);
                                                                                                      }
                                                                                                      §§goto(addr0248);
                                                                                                   }
                                                                                                   §§goto(addr01cc);
                                                                                                }
                                                                                                §§goto(addr01e6);
                                                                                             }
                                                                                             §§goto(addr0290);
                                                                                          }
                                                                                          §§goto(addr028d);
                                                                                       }
                                                                                       §§goto(addr01b9);
                                                                                    }
                                                                                    §§goto(addr0289);
                                                                                 }
                                                                                 §§goto(addr0266);
                                                                              }
                                                                              §§goto(addr0248);
                                                                           }
                                                                           §§goto(addr0186);
                                                                        }
                                                                        §§goto(addr0224);
                                                                     }
                                                                     §§goto(addr021b);
                                                                  }
                                                                  §§goto(addr028d);
                                                               }
                                                               §§goto(addr020a);
                                                            }
                                                            §§goto(addr0289);
                                                         }
                                                         §§goto(addr010c);
                                                      }
                                                      §§goto(addr0224);
                                                   }
                                                   §§goto(addr021b);
                                                }
                                                §§goto(addr011d);
                                             }
                                             §§goto(addr020a);
                                          }
                                          §§goto(addr016b);
                                       }
                                       §§goto(addr0251);
                                    }
                                    §§goto(addr020a);
                                 }
                                 §§goto(addr016b);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr0159);
                        }
                        addr0262:
                        if(_loc1_ || _loc1_)
                        {
                           addr0289:
                           addr0294:
                           addr0290:
                           addr028d:
                           if(this._data.contentVo is CityTreasuryBonusCodeVo)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 addr02a5:
                                 this.handleBonusCodeVo();
                              }
                           }
                        }
                        §§goto(addr02ab);
                     }
                     addr02ab:
                     return;
                  }
                  §§goto(addr0048);
               }
               §§goto(addr0197);
            }
            §§goto(addr0088);
         }
         §§goto(addr02a5);
      }
      
      private function handleBonusCodeVo() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CityTreasuryBonusCodeVo = this._data.contentVo as CityTreasuryBonusCodeVo;
         if(_loc3_ || _loc2_)
         {
            §§push(this.headerLabel);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr004d:
                     this.headerLabel.text = _loc1_.headerLabel;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0060);
                     }
                     §§goto(addr00e9);
                  }
               }
               addr0060:
               §§push(this.mainText);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§goto(addr0076);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0081);
               }
               addr0076:
               this.mainText.text = _loc1_.mainText;
               §§goto(addr0072);
            }
            §§goto(addr004d);
         }
         addr0072:
         if(!_loc2_)
         {
            addr0081:
            §§push(this.packGfx);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr00ac:
                     this.packGfx.briskDynaVo = _loc1_.packGfx;
                     addr00a8:
                     if(!_loc2_)
                     {
                        addr00b8:
                        §§push(this.errorLabel);
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00d6:
                                 this.errorLabel.text = _loc1_.errorLabel;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00e9:
                                    §§push(this.purchaseButton);
                                    if(_loc3_)
                                    {
                                       §§push(_loc1_.buttonLabel);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc2_)
                                          {
                                             §§push(this.purchaseButton);
                                             if(_loc3_)
                                             {
                                                addr0123:
                                                §§pop().toolTip = _loc1_.buttonTooltip;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr0136:
                                                   this.purchaseButton.removeEventListener(MouseEvent.CLICK,this.handlePurchaseButtonClick);
                                                   addr0132:
                                                }
                                                §§goto(addr0142);
                                             }
                                             §§goto(addr0136);
                                          }
                                          §§goto(addr0142);
                                       }
                                       §§goto(addr0123);
                                    }
                                    §§goto(addr0136);
                                 }
                                 §§goto(addr0132);
                              }
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr00d6);
                     }
                  }
                  §§goto(addr0132);
               }
               §§goto(addr00b8);
            }
            §§goto(addr00ac);
         }
         addr0142:
      }
      
      private function handleRentCollectorVo() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:CityTreasuryRentCollectorVo = this._data.contentVo as CityTreasuryRentCollectorVo;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.headerLabel);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     addr0050:
                     this.headerLabel.text = _loc1_.headerText;
                     if(_loc3_)
                     {
                        addr005b:
                        §§push(this.packGfx);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 addr0079:
                                 this.packGfx.briskDynaVo = _loc1_.packGfx;
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    addr008e:
                                    §§push(this.mainText);
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && Boolean(_loc1_)))
                                          {
                                             addr00ad:
                                             this.mainText.text = _loc1_.topText;
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr00c0:
                                                §§push(this.purchaseLabel);
                                                if(_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr00d6:
                                                         this.purchaseLabel.text = _loc1_.purchaseLabel;
                                                         if(_loc3_)
                                                         {
                                                            addr00e1:
                                                            §§push(this.extraText);
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr00f7:
                                                                     this.extraText.text = _loc1_.bottomText;
                                                                     if(_loc3_ || Boolean(_loc1_))
                                                                     {
                                                                        §§goto(addr010a);
                                                                     }
                                                                     §§goto(addr0151);
                                                                  }
                                                                  §§goto(addr0265);
                                                               }
                                                               addr010a:
                                                               §§push(this.runtimeLabel);
                                                               if(!_loc4_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§goto(addr012a);
                                                                     }
                                                                     §§goto(addr0265);
                                                                  }
                                                                  §§goto(addr0136);
                                                               }
                                                               addr012a:
                                                               this.runtimeLabel.text = _loc1_.runtimeText;
                                                               if(_loc3_)
                                                               {
                                                                  addr0136:
                                                                  §§push(this.packIconGfx);
                                                                  if(_loc3_ || Boolean(_loc1_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr0151:
                                                                           if(_loc1_.bigPackIconGfx)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr015e:
                                                                                 §§push(this.packIconGfx);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().briskDynaVo = _loc1_.bigPackIconGfx;
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr017c:
                                                                                       §§push(this.packIconGfx);
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          §§push(this.packIconGfx);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                var _temp_14:* = §§pop();
                                                                                                §§push(_temp_14);
                                                                                                §§push(_temp_14);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   var _loc2_:* = §§pop();
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop().visible = §§pop();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr020a:
                                                                                                                  §§push(this.buttonIcon);
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           if(_loc1_.smallPackIconGfx)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 addr0247:
                                                                                                                                 §§push(this.buttonIcon);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    addr0250:
                                                                                                                                    §§pop().briskDynaVo = _loc1_.smallPackIconGfx;
                                                                                                                                    if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                    {
                                                                                                                                       addr0265:
                                                                                                                                       §§push(this.buttonIcon);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this.buttonIcon);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(true);
                                                                                                                                             if(_loc3_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                var _temp_22:* = §§pop();
                                                                                                                                                §§push(_temp_22);
                                                                                                                                                §§push(_temp_22);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   if(!(_loc4_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().visible = §§pop();
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr02ed:
                                                                                                                                                                  §§push(this.priceLabel);
                                                                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr0311:
                                                                                                                                                                           if(_loc1_.hasDiscount)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.priceLabel);
                                                                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0330:
                                                                                                                                                                                    §§pop().text = _loc1_.discountLabel;
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr033b:
                                                                                                                                                                                       §§push(this.priceLabel);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.priceLabel);
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(true);
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                var _temp_29:* = §§pop();
                                                                                                                                                                                                §§push(_temp_29);
                                                                                                                                                                                                §§push(_temp_29);
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                                                                   if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().visible = §§pop();
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(this.priceLine)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr03ad:
                                                                                                                                                                                                                        var _temp_34:* = this.priceLine;
                                                                                                                                                                                                                        this.priceLine.includeInLayout = _loc2_ = true;
                                                                                                                                                                                                                        _temp_34.visible = _loc2_;
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr03ef);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr03e1:
                                                                                                                                                                                                                        if(this.priceLine)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr03ef:
                                                                                                                                                                                                                              var _temp_35:* = this.priceLine;
                                                                                                                                                                                                                              this.priceLine.includeInLayout = _loc2_ = false;
                                                                                                                                                                                                                              _temp_35.visible = _loc2_;
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0413:
                                                                                                                                                                                                                                 §§push(this.purchaseButton);
                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc1_.buttonLabel);
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().label = §§pop();
                                                                                                                                                                                                                                       if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr043e:
                                                                                                                                                                                                                                          this.purchaseButton.toolTip = _loc1_.buttonTooltip;
                                                                                                                                                                                                                                          addr043a:
                                                                                                                                                                                                                                          addr0436:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0440);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr043e);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr043a);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0440);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0413);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0436);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr03d9:
                                                                                                                                                                                                               §§pop().visible = §§pop();
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr03e1);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0413);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr03d7:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr03d9);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr03d6:
                                                                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr03d7);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03d4:
                                                                                                                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr03d6);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03d3:
                                                                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr03d4);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03d2:
                                                                                                                                                                                                var _temp_37:* = §§pop();
                                                                                                                                                                                                §§push(_temp_37);
                                                                                                                                                                                                §§push(_temp_37);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr03d3);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03d1:
                                                                                                                                                                                             §§push(false);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr03d2);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03cd:
                                                                                                                                                                                          §§push(this.priceLabel);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03d1);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03ad);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03cd);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0440);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.priceLabel);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03cd);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr03ef);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0413);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0330);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0311);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr02dd:
                                                                                                                                                               §§pop().visible = §§pop();
                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr02ed);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0413);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr02db:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02dd);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr02da:
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02db);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr02d8:
                                                                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02da);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr02d7:
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                }
                                                                                                                                                §§goto(addr02d8);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr02d6:
                                                                                                                                                var _temp_39:* = §§pop();
                                                                                                                                                §§push(_temp_39);
                                                                                                                                                §§push(_temp_39);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02d7);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr02d5:
                                                                                                                                             §§push(false);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02d6);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr02d1:
                                                                                                                                          §§push(this.buttonIcon);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02d5);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02ed);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02d1);
                                                                                                                              }
                                                                                                                              §§goto(addr03ef);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(this.buttonIcon);
                                                                                                                           }
                                                                                                                           §§goto(addr02d1);
                                                                                                                        }
                                                                                                                        §§goto(addr033b);
                                                                                                                     }
                                                                                                                     §§goto(addr02ed);
                                                                                                                  }
                                                                                                                  §§goto(addr0250);
                                                                                                               }
                                                                                                               §§goto(addr0265);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0202:
                                                                                                               §§pop().visible = §§pop();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr020a);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0413);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0200:
                                                                                                         }
                                                                                                         §§goto(addr0202);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr01ff:
                                                                                                         §§push(_loc2_);
                                                                                                      }
                                                                                                      §§goto(addr0200);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr01fd:
                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr01ff);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr01fc:
                                                                                                   _loc2_ = §§pop();
                                                                                                }
                                                                                                §§goto(addr01fd);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr01fb:
                                                                                                var _temp_40:* = §§pop();
                                                                                                §§push(_temp_40);
                                                                                                §§push(_temp_40);
                                                                                             }
                                                                                             §§goto(addr01fc);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01fa:
                                                                                             §§push(false);
                                                                                          }
                                                                                          §§goto(addr01fb);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr01f6:
                                                                                          §§push(this.packIconGfx);
                                                                                       }
                                                                                       §§goto(addr01fa);
                                                                                    }
                                                                                    §§goto(addr02ed);
                                                                                 }
                                                                                 §§goto(addr01f6);
                                                                              }
                                                                              §§goto(addr017c);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.packIconGfx);
                                                                           }
                                                                           §§goto(addr01f6);
                                                                        }
                                                                        §§goto(addr0413);
                                                                     }
                                                                     §§goto(addr020a);
                                                                  }
                                                                  §§goto(addr01f6);
                                                               }
                                                               addr0440:
                                                               return;
                                                            }
                                                            §§goto(addr00f7);
                                                         }
                                                         §§goto(addr015e);
                                                      }
                                                      §§goto(addr0413);
                                                   }
                                                   §§goto(addr00e1);
                                                }
                                                §§goto(addr00d6);
                                             }
                                             §§goto(addr00e1);
                                          }
                                          §§goto(addr0247);
                                       }
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00ad);
                                 }
                                 §§goto(addr020a);
                              }
                              §§goto(addr03ef);
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr0413);
               }
               §§goto(addr005b);
            }
            §§goto(addr0050);
         }
         §§goto(addr03ef);
      }
      
      private function handleExternalPackVo() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:CityTreasuryExternalPackVo = this._data.contentVo as CityTreasuryExternalPackVo;
         if(_loc3_ || _loc2_)
         {
            §§push(this.headerLabel);
            if(_loc3_ || Boolean(_loc1_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr004d:
                     this.headerLabel.text = _loc1_.packName;
                     if(_loc3_)
                     {
                        addr0058:
                        §§push(this.mainText);
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 addr0078:
                                 this.mainText.text = _loc1_.packDescription;
                                 if(!(_loc4_ && Boolean(_loc1_)))
                                 {
                                    addr008d:
                                    §§push(this.packGfx);
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc1_.packGfx)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr00ba:
                                                   this.packGfx.briskDynaVo = _loc1_.packGfx;
                                                   if(_loc3_)
                                                   {
                                                      addr00c6:
                                                      §§push(this.packIconGfx);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc1_.bigPackIconGfx)
                                                               {
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr00f7:
                                                                     §§push(this.packIconGfx);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§pop().briskDynaVo = _loc1_.bigPackIconGfx;
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(this.packIconGfx);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(this.packIconGfx);
                                                                              if(!(_loc4_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§push(true);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    var _temp_11:* = §§pop();
                                                                                    §§push(_temp_11);
                                                                                    §§push(_temp_11);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       var _loc2_:* = §§pop();
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          §§pop().includeInLayout = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§pop().visible = §§pop();
                                                                                                   if(_loc3_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      addr01a6:
                                                                                                      if(this.packContentList)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            this.packContentList.dataProvider = _loc1_.packContentData;
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr01cd:
                                                                                                               §§push(this.purchaseLabel);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc3_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        addr01ec:
                                                                                                                        this.purchaseLabel.text = _loc1_.purchaseLabel;
                                                                                                                        addr01e8:
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr01f8:
                                                                                                                           §§push(this.purchaseButton);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc1_.buttonLabel);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§pop().label = §§pop();
                                                                                                                                 if(_loc3_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr022d:
                                                                                                                                    this.purchaseButton.toolTip = _loc1_.buttonTooltip;
                                                                                                                                    addr0229:
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr0234:
                                                                                                                                       §§push(this.buttonIcon);
                                                                                                                                       if(_loc3_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                addr024e:
                                                                                                                                                if(_loc1_.smallPackIconGfx)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      addr0263:
                                                                                                                                                      §§push(this.buttonIcon);
                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0274);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02ed);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0337);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(this.buttonIcon);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02ed);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0353);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0300);
                                                                                                                                       }
                                                                                                                                       addr0274:
                                                                                                                                       §§pop().briskDynaVo = _loc1_.smallPackIconGfx;
                                                                                                                                       if(!(_loc4_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(this.buttonIcon);
                                                                                                                                          if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                          {
                                                                                                                                             §§push(this.buttonIcon);
                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(true);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   var _temp_24:* = §§pop();
                                                                                                                                                   §§push(_temp_24);
                                                                                                                                                   §§push(_temp_24);
                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0300:
                                                                                                                                                                     §§push(this.priceLabel);
                                                                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              addr0322:
                                                                                                                                                                              if(_loc1_.hasDiscount)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0337:
                                                                                                                                                                                    §§push(this.priceLabel);
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().text = _loc1_.priceLabel;
                                                                                                                                                                                       if(_loc3_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0353:
                                                                                                                                                                                          §§push(this.priceLabel);
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr035d:
                                                                                                                                                                                             §§push(this.priceLabel);
                                                                                                                                                                                             if(!(_loc4_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                if(_loc3_ || Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   var _temp_32:* = §§pop();
                                                                                                                                                                                                   §§push(_temp_32);
                                                                                                                                                                                                   §§push(_temp_32);
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(this.priceLine)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc3_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr03d5:
                                                                                                                                                                                                                           this.priceLine.visible = this.priceLine.includeInLayout = true;
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr041c:
                                                                                                                                                                                                                              if(this.priceLine)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0432:
                                                                                                                                                                                                                                    this.priceLine.visible = this.priceLine.includeInLayout = false;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0444);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0432);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0444);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0400:
                                                                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                                                                  if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr041c);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0432);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr03fe:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0400);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr03fd:
                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr03fe);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr03fb:
                                                                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr03fd);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03fa:
                                                                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr03fb);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03f9:
                                                                                                                                                                                                   var _temp_39:* = §§pop();
                                                                                                                                                                                                   §§push(_temp_39);
                                                                                                                                                                                                   §§push(_temp_39);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr03fa);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03f8:
                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr03f9);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03f4:
                                                                                                                                                                                             §§push(this.priceLabel);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr03f8);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03d5);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr035d);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0432);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.priceLabel);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03f4);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0353);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0444);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03f4);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0444);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr02f9:
                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr0300);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0353);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr02f7:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02f9);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr02f6:
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02f7);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr02f4:
                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02f6);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr02f3:
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02f4);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr02f2:
                                                                                                                                                   var _temp_40:* = §§pop();
                                                                                                                                                   §§push(_temp_40);
                                                                                                                                                   §§push(_temp_40);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02f3);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr02f1:
                                                                                                                                                §§push(false);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02f2);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr02ed:
                                                                                                                                             §§push(this.buttonIcon);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02f1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0444);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0322);
                                                                                                                                 }
                                                                                                                                 §§goto(addr024e);
                                                                                                                              }
                                                                                                                              §§goto(addr022d);
                                                                                                                           }
                                                                                                                           §§goto(addr0229);
                                                                                                                        }
                                                                                                                        §§goto(addr0300);
                                                                                                                     }
                                                                                                                     §§goto(addr0444);
                                                                                                                  }
                                                                                                                  §§goto(addr01f8);
                                                                                                               }
                                                                                                               §§goto(addr01ec);
                                                                                                            }
                                                                                                            §§goto(addr0444);
                                                                                                         }
                                                                                                         §§goto(addr01e8);
                                                                                                      }
                                                                                                      §§goto(addr01cd);
                                                                                                   }
                                                                                                   §§goto(addr01f8);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0196:
                                                                                                   §§pop().visible = §§pop();
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr01a6);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0263);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0194:
                                                                                             }
                                                                                             §§goto(addr0196);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0193:
                                                                                             §§push(_loc2_);
                                                                                          }
                                                                                          §§goto(addr0194);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0191:
                                                                                          §§pop().includeInLayout = §§pop();
                                                                                       }
                                                                                       §§goto(addr0193);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0190:
                                                                                       _loc2_ = §§pop();
                                                                                    }
                                                                                    §§goto(addr0191);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr018f:
                                                                                    var _temp_42:* = §§pop();
                                                                                    §§push(_temp_42);
                                                                                    §§push(_temp_42);
                                                                                 }
                                                                                 §§goto(addr0190);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr018e:
                                                                                 §§push(false);
                                                                              }
                                                                              §§goto(addr018f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr018a:
                                                                              §§push(this.packIconGfx);
                                                                           }
                                                                           §§goto(addr018e);
                                                                        }
                                                                        §§goto(addr041c);
                                                                     }
                                                                     §§goto(addr018a);
                                                                  }
                                                                  §§goto(addr0234);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.packIconGfx);
                                                               }
                                                               §§goto(addr018a);
                                                            }
                                                            §§goto(addr0432);
                                                         }
                                                         §§goto(addr01a6);
                                                      }
                                                      §§goto(addr018a);
                                                   }
                                                   §§goto(addr0300);
                                                }
                                                §§goto(addr03d5);
                                             }
                                          }
                                       }
                                       §§goto(addr00c6);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr0300);
                              }
                              §§goto(addr01f8);
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0078);
                     }
                     §§goto(addr0432);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr0058);
            }
            §§goto(addr004d);
         }
         addr0444:
      }
      
      private function handleCashForActionVo() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CityTreasuryCashForActionVo = this._data.contentVo as CityTreasuryCashForActionVo;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.headerLabel);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0060);
            }
            addr0055:
            this.headerLabel.text = _loc1_.headerLabel;
            if(_loc3_)
            {
               addr0060:
               §§push(this.mainText);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr0082:
                        this.mainText.text = _loc1_.mainText;
                        addr007e:
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0095:
                           §§push(this.packGfx);
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00b3:
                                    this.packGfx.briskDynaVo = _loc1_.packGfx;
                                    addr00af:
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00c7:
                                       §§push(this.purchaseButton);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(_loc1_.buttonLabel);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§pop().label = §§pop();
                                             if(_loc3_)
                                             {
                                                addr0104:
                                                this.purchaseButton.toolTip = _loc1_.buttonTooltip;
                                                addr0100:
                                                addr00fc:
                                             }
                                             §§goto(addr0106);
                                          }
                                          §§goto(addr0104);
                                       }
                                       §§goto(addr0100);
                                    }
                                 }
                                 §§goto(addr00fc);
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00af);
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0082);
            }
            §§goto(addr0106);
         }
         addr0106:
      }
      
      private function handleInternalPackVo() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CityTreasuryInternalPackVo = this._data.contentVo as CityTreasuryInternalPackVo;
         if(!(_loc2_ && _loc2_))
         {
            if(this.packList)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0043:
                  this.packList.removeEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
                  if(_loc3_ || Boolean(this))
                  {
                     this.packList.addEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
                     if(!(_loc2_ && _loc2_))
                     {
                        this.packList.dataProvider = _loc1_.packsAsListCollection;
                        if(!(_loc2_ && _loc2_))
                        {
                           if(this._currentSelectedPackIndex == -1)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 this._currentSelectedPackIndex = this._data.preSelectedPackIndex;
                                 if(!_loc2_)
                                 {
                                    addr00d7:
                                    this.selectPack(this._currentSelectedPackIndex);
                                 }
                                 §§goto(addr00e0);
                              }
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr00e0);
                     }
                  }
               }
               §§goto(addr00d7);
            }
            addr00e0:
            return;
         }
         §§goto(addr0043);
      }
      
      private function handleRealCurrencyPackVo() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CityTreasuryRealCurrencyPackVo = this._data.contentVo as CityTreasuryRealCurrencyPackVo;
         if(_loc3_ || _loc2_)
         {
            §§push(this.headerLabel);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0044:
                     this.headerLabel.text = _loc1_.headerLabel;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr0057);
                     }
                     §§goto(addr0158);
                  }
               }
               addr0057:
               §§push(this.listHeaderLabel);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr00f0);
                  }
                  §§goto(addr0078);
               }
               addr006d:
               this.listHeaderLabel.text = _loc1_.packListHeader;
               if(_loc3_)
               {
                  addr0078:
                  §§push(this.purchaseButton);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(_loc1_.buttonLabel);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop().label = §§pop();
                        if(!_loc2_)
                        {
                           addr00b6:
                           this.purchaseButton.toolTip = _loc1_.buttonTooltip;
                           addr00b2:
                           if(!_loc2_)
                           {
                              if(this.packList)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00d2:
                                    this.packList.removeEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00f0:
                                       this.packList.addEventListener(IndexChangeEvent.CHANGE,this.packListChanged);
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr010e:
                                          this.packList.dataProvider = _loc1_.packsAsListCollection;
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(this._currentSelectedPackIndex == -1)
                                             {
                                                if(_loc3_)
                                                {
                                                   this._currentSelectedPackIndex = this._data.preSelectedPackIndex;
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr0158:
                                                      this.selectPack(this._currentSelectedPackIndex);
                                                   }
                                                   §§goto(addr0161);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr0158);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr0158);
                              }
                              §§goto(addr0161);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr0161);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00b2);
               }
               addr0161:
               return;
            }
            §§goto(addr0044);
         }
         §§goto(addr0158);
      }
      
      private function handlePackListReady(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.packList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handlePackListReady);
            if(_loc3_)
            {
               addr003c:
               if(this._data.contentVo is CityTreasuryInternalPackVo)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.selectPack(this._currentSelectedPackIndex);
                  }
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      private function packListChanged(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(param1);
            if(!(_loc2_ && Boolean(param1)))
            {
               addr002a:
               this.selectPack(param1.newIndex);
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function selectPack(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this.packList)
            {
               if(!_loc3_)
               {
                  addr0026:
                  §§push(this._data);
                  if(!_loc3_)
                  {
                     §§push(§§pop().contentVo);
                     if(!_loc3_)
                     {
                        §§push(§§pop() is CityTreasuryRealCurrencyPackVo);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.packList.selectedIndex = param1;
                                 if(_loc2_)
                                 {
                                    addr0072:
                                    this._currentSelectedPackIndex = param1;
                                    if(_loc2_ || Boolean(param1))
                                    {
                                       this.setRealCurrencyPackData();
                                       if(!(_loc2_ || Boolean(this)))
                                       {
                                          addr00c3:
                                          this.packList.selectedIndex = param1;
                                          if(_loc2_)
                                          {
                                             addr00d0:
                                             this._currentSelectedPackIndex = param1;
                                             if(!_loc3_)
                                             {
                                                this.setInternalPackData();
                                             }
                                          }
                                       }
                                       §§goto(addr00e0);
                                    }
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00d0);
                           }
                           else
                           {
                              addr00b2:
                              addr00ae:
                              addr009f:
                              if(this._data.contentVo is CityTreasuryInternalPackVo)
                              {
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00d0);
                              }
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0072);
            }
            addr00e0:
            return;
         }
         §§goto(addr0026);
      }
      
      private function setInternalPackData() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:CityTreasuryInternalPackItemVo = null;
         if(_loc4_ || _loc2_)
         {
            §§push(this._data);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop().skinStyle == TYPE_INTERNAL_PACK);
               if(!_loc3_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§goto(addr006b);
                        }
                        §§goto(addr006f);
                     }
                  }
               }
               addr006b:
               §§goto(addr005d);
            }
            §§goto(addr0073);
         }
         addr005d:
         §§push(this._currentSelectedPackIndex == -1);
         if(_loc4_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr0073:
            _loc1_ = (this._data.contentVo as CityTreasuryInternalPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
            addr006f:
            if(!(_loc3_ && Boolean(this)))
            {
               if(_loc1_)
               {
                  if(!_loc3_)
                  {
                     §§push(this.packGfx);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr00c0:
                              this.packGfx.briskDynaVo = _loc1_.bigPackGfx;
                              if(!_loc3_)
                              {
                                 addr00cd:
                                 §§push(this.packIconGfx);
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_ || Boolean(this))
                                       {
                                          addr00e8:
                                          if(_loc1_.bigPackIconGfx)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(this.packIconGfx);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr0108:
                                                   §§pop().briskDynaVo = _loc1_.bigPackIconGfx;
                                                   if(_loc4_)
                                                   {
                                                      addr0115:
                                                      §§push(this.packIconGfx);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr0126:
                                                         §§push(this.packIconGfx);
                                                         if(_loc4_)
                                                         {
                                                            §§push(true);
                                                            if(_loc4_)
                                                            {
                                                               var _temp_11:* = §§pop();
                                                               §§push(_temp_11);
                                                               §§push(_temp_11);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  var _loc2_:* = §§pop();
                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§pop().includeInLayout = §§pop();
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§pop().visible = §§pop();
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 addr01c0:
                                                                                 §§push(this.headerLabel);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01d7:
                                                                                          this.headerLabel.text = _loc1_.packName;
                                                                                          addr01d3:
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr01e2);
                                                                                          }
                                                                                          §§goto(addr025e);
                                                                                       }
                                                                                       §§goto(addr028a);
                                                                                    }
                                                                                    §§goto(addr01e2);
                                                                                 }
                                                                                 §§goto(addr01d7);
                                                                              }
                                                                              addr01e2:
                                                                              §§push(this.listHeaderLabel);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(this._data.contentVo is CityTreasuryInternalPackVo)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr021d);
                                                                                          }
                                                                                          §§goto(addr025e);
                                                                                       }
                                                                                       §§goto(addr023b);
                                                                                    }
                                                                                    §§goto(addr029e);
                                                                                 }
                                                                                 §§goto(addr023b);
                                                                              }
                                                                              addr021d:
                                                                              this.listHeaderLabel.text = (this._data.contentVo as CityTreasuryInternalPackVo).packListHeader;
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr023b:
                                                                                 §§push(this.mainText);
                                                                                 if(_loc4_ || Boolean(_loc1_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr0262:
                                                                                          this.mainText.text = _loc1_.packDescriptionText;
                                                                                          addr025e:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr026f:
                                                                                             §§push(this.priceLabel);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      addr028e:
                                                                                                      this.priceLabel.text = _loc1_.price.toString();
                                                                                                      addr028a:
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr029e:
                                                                                                         §§push(this.plusIcon);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(this.plusIcon);
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr02cb:
                                                                                                                     §§pop().visible = _loc1_.price > this._data.currentRCStock;
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr02ea:
                                                                                                                        addr02e6:
                                                                                                                        if(this.plusIcon.visible)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr02fd:
                                                                                                                              §§push(this.purchaseButton);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_.buttonNotAffordableTooltip);
                                                                                                                                 if(_loc4_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    §§pop().toolTip = §§pop();
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       addr0356:
                                                                                                                                       §§push(this.purchaseButton);
                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr0374:
                                                                                                                                          §§pop().label = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.button.text.capital");
                                                                                                                                          addr0368:
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr0381:
                                                                                                                                             this.purchaseButton.priceToConfirm = _loc1_.price;
                                                                                                                                             addr037d:
                                                                                                                                          }
                                                                                                                                          §§goto(addr0388);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0381);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0341:
                                                                                                                                    §§pop().toolTip = §§pop();
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr0356);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0388);
                                                                                                                              }
                                                                                                                              §§goto(addr0381);
                                                                                                                           }
                                                                                                                           §§goto(addr0356);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.purchaseButton);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc1_.buttonAffordableTooltip);
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0341);
                                                                                                                              }
                                                                                                                              §§goto(addr0374);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0368);
                                                                                                                     }
                                                                                                                     §§goto(addr0356);
                                                                                                                  }
                                                                                                                  §§goto(addr02ea);
                                                                                                               }
                                                                                                               §§goto(addr037d);
                                                                                                            }
                                                                                                            §§goto(addr0356);
                                                                                                         }
                                                                                                         §§goto(addr02cb);
                                                                                                      }
                                                                                                      §§goto(addr0356);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr029e);
                                                                                             }
                                                                                             §§goto(addr028e);
                                                                                          }
                                                                                          §§goto(addr037d);
                                                                                       }
                                                                                       §§goto(addr02e6);
                                                                                    }
                                                                                    §§goto(addr026f);
                                                                                 }
                                                                                 §§goto(addr0262);
                                                                              }
                                                                              §§goto(addr0388);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01b0:
                                                                              §§pop().visible = §§pop();
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr01c0);
                                                                              }
                                                                           }
                                                                           §§goto(addr0356);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01ae:
                                                                        }
                                                                        §§goto(addr01b0);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01ad:
                                                                        §§push(_loc2_);
                                                                     }
                                                                     §§goto(addr01ae);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01ab:
                                                                     §§pop().includeInLayout = §§pop();
                                                                  }
                                                                  §§goto(addr01ad);
                                                               }
                                                               else
                                                               {
                                                                  addr019d:
                                                                  _loc2_ = §§pop();
                                                               }
                                                               §§goto(addr01ab);
                                                            }
                                                            else
                                                            {
                                                               addr019c:
                                                               var _temp_32:* = §§pop();
                                                               §§push(_temp_32);
                                                               §§push(_temp_32);
                                                            }
                                                            §§goto(addr019d);
                                                         }
                                                         else
                                                         {
                                                            addr019b:
                                                            §§push(false);
                                                         }
                                                         §§goto(addr019c);
                                                      }
                                                      else
                                                      {
                                                         addr0197:
                                                         §§push(this.packIconGfx);
                                                      }
                                                      §§goto(addr019b);
                                                   }
                                                   §§goto(addr0356);
                                                }
                                                §§goto(addr0126);
                                             }
                                             §§goto(addr025e);
                                          }
                                          else
                                          {
                                             §§push(this.packIconGfx);
                                          }
                                          §§goto(addr0197);
                                       }
                                       §§goto(addr02fd);
                                    }
                                    §§goto(addr01c0);
                                 }
                                 §§goto(addr0108);
                              }
                              §§goto(addr0115);
                           }
                           §§goto(addr01d3);
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr00c0);
                  }
               }
               §§goto(addr0388);
            }
            §§goto(addr00e8);
         }
         addr0388:
      }
      
      private function setRealCurrencyPackData() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:CityTreasuryRealCurrencyPackItemVo = null;
         if(_loc4_)
         {
            §§push(this._data);
            if(_loc4_)
            {
               §§push(§§pop().skinStyle == TYPE_REAL_CURRENCY);
               if(_loc4_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr005c);
                        }
                        §§goto(addr0060);
                     }
                     §§goto(addr005b);
                  }
               }
               addr005c:
               §§push(this._currentSelectedPackIndex == -1);
               if(_loc4_)
               {
                  addr005b:
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  addr0064:
                  _loc1_ = (this._data.contentVo as CityTreasuryRealCurrencyPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
                  addr0060:
                  if(_loc4_ || Boolean(this))
                  {
                     if(_loc1_)
                     {
                        if(!_loc3_)
                        {
                           §§push(this.packGfx);
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr00ab:
                                    this.packGfx.briskDynaVo = _loc1_.bigPackGfx;
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr00c1:
                                       §§push(this.packIconGfx);
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc1_.bigPackIconGfx)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.packIconGfx);
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§pop().briskDynaVo = _loc1_.bigPackIconGfx;
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(this.packIconGfx);
                                                            if(_loc4_)
                                                            {
                                                               addr0122:
                                                               §§push(this.packIconGfx);
                                                               if(_loc4_ || Boolean(_loc1_))
                                                               {
                                                                  §§push(true);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     var _temp_12:* = §§pop();
                                                                     §§push(_temp_12);
                                                                     §§push(_temp_12);
                                                                     if(!(_loc3_ && Boolean(this)))
                                                                     {
                                                                        var _loc2_:* = §§pop();
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§pop().includeInLayout = §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    §§pop().visible = §§pop();
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01a8:
                                                                                       §§push(this.headerLabel);
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr01c6:
                                                                                                this.headerLabel.text = _loc1_.packName;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr01d1:
                                                                                                   §§push(this.mainText);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr01e7:
                                                                                                            this.mainText.text = _loc1_.mainText;
                                                                                                            addr01e3:
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               addr0208:
                                                                                                               §§push(this.priceLabel);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr021b:
                                                                                                                        §§push(this.priceLabel);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(_loc1_.priceLabel);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§pop().text = §§pop();
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr0235:
                                                                                                                                 §§push(this.priceLabel);
                                                                                                                                 if(_loc4_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop().visible = this.priceLabel.includeInLayout = true;
                                                                                                                                    if(_loc4_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr0263:
                                                                                                                                       §§push(this.oldPriceLabel);
                                                                                                                                       if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             var _temp_22:* = §§pop();
                                                                                                                                             §§push(_temp_22);
                                                                                                                                             if(_temp_22)
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr02a6:
                                                                                                                                                      addr0293:
                                                                                                                                                      §§push(_loc1_.hasDiscount);
                                                                                                                                                      if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                      }
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            addr02b7:
                                                                                                                                                            §§push(this.priceLabel);
                                                                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr02c8:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     addr02d9:
                                                                                                                                                                     §§push(this.oldPriceLabel);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02e3:
                                                                                                                                                                        §§pop().text = this.priceLabel.text;
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr02f0:
                                                                                                                                                                           §§push(this.oldPriceLabel);
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr02f9:
                                                                                                                                                                              §§push(this.oldPriceLabel);
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _temp_28:* = §§pop();
                                                                                                                                                                                    §§push(_temp_28);
                                                                                                                                                                                    §§push(_temp_28);
                                                                                                                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().includeInLayout = §§pop();
                                                                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                             if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().visible = §§pop();
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0353:
                                                                                                                                                                                                      this.priceLabel.text = _loc1_.discountPriceLabel;
                                                                                                                                                                                                      addr034e:
                                                                                                                                                                                                      addr034a:
                                                                                                                                                                                                      if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0362:
                                                                                                                                                                                                         if(this.priceLine)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0377:
                                                                                                                                                                                                               this.priceLine.visible = this.priceLine.includeInLayout = true;
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr03b2:
                                                                                                                                                                                                                  if(this.priceLine)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        var _temp_34:* = this.priceLine;
                                                                                                                                                                                                                        this.priceLine.includeInLayout = _loc2_ = false;
                                                                                                                                                                                                                        _temp_34.visible = _loc2_;
                                                                                                                                                                                                                        §§goto(addr03c0);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr03ec);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr03c0:
                                                                                                                                                                                                            if(_loc4_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr03ec:
                                                                                                                                                                                                               this.purchaseButton.label = LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.button.text.capital");
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr03ff);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr03ec);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0377);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03a3:
                                                                                                                                                                                                   §§pop().visible = §§pop();
                                                                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr03b2);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr03ff);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03a1:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr03a3);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03a0:
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr03a1);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr039e:
                                                                                                                                                                                          §§pop().includeInLayout = §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03a0);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr039d:
                                                                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr039e);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr039c:
                                                                                                                                                                                    var _temp_37:* = §§pop();
                                                                                                                                                                                    §§push(_temp_37);
                                                                                                                                                                                    §§push(_temp_37);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr039d);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr039b:
                                                                                                                                                                                 §§push(false);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr039c);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr0397:
                                                                                                                                                                              §§push(this.oldPriceLabel);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr039b);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0362);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02f9);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03ec);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr034e);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr034a);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.oldPriceLabel);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0397);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02b7);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr02a6);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02e3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0293);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02c8);
                                                                                                                              }
                                                                                                                              §§goto(addr03b2);
                                                                                                                           }
                                                                                                                           §§goto(addr0353);
                                                                                                                        }
                                                                                                                        §§goto(addr034e);
                                                                                                                     }
                                                                                                                     §§goto(addr03ec);
                                                                                                                  }
                                                                                                                  §§goto(addr0263);
                                                                                                               }
                                                                                                               §§goto(addr02c8);
                                                                                                            }
                                                                                                            §§goto(addr02b7);
                                                                                                         }
                                                                                                         §§goto(addr03ec);
                                                                                                      }
                                                                                                      §§goto(addr0208);
                                                                                                   }
                                                                                                   §§goto(addr01e7);
                                                                                                }
                                                                                                §§goto(addr02f0);
                                                                                             }
                                                                                             §§goto(addr03c0);
                                                                                          }
                                                                                          §§goto(addr01d1);
                                                                                       }
                                                                                       §§goto(addr01c6);
                                                                                    }
                                                                                    §§goto(addr01e3);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr01a0:
                                                                                    §§pop().visible = §§pop();
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§goto(addr01a8);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0235);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr019e:
                                                                              }
                                                                              §§goto(addr01a0);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr019d:
                                                                              §§push(_loc2_);
                                                                           }
                                                                           §§goto(addr019e);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr019b:
                                                                           §§pop().includeInLayout = §§pop();
                                                                        }
                                                                        §§goto(addr019d);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr019a:
                                                                        _loc2_ = §§pop();
                                                                     }
                                                                     §§goto(addr019b);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0199:
                                                                     var _temp_38:* = §§pop();
                                                                     §§push(_temp_38);
                                                                     §§push(_temp_38);
                                                                  }
                                                                  §§goto(addr019a);
                                                               }
                                                               else
                                                               {
                                                                  addr0198:
                                                                  §§push(false);
                                                               }
                                                               §§goto(addr0199);
                                                            }
                                                            else
                                                            {
                                                               addr0194:
                                                               §§push(this.packIconGfx);
                                                            }
                                                            §§goto(addr0198);
                                                         }
                                                         §§goto(addr03ec);
                                                      }
                                                      §§goto(addr0194);
                                                   }
                                                   §§goto(addr0362);
                                                }
                                                else
                                                {
                                                   §§push(this.packIconGfx);
                                                }
                                                §§goto(addr0194);
                                             }
                                             §§goto(addr01e3);
                                          }
                                          §§goto(addr01a8);
                                       }
                                       §§goto(addr0122);
                                    }
                                    §§goto(addr02d9);
                                 }
                                 §§goto(addr01a8);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr021b);
                     }
                     §§goto(addr03ff);
                  }
                  §§goto(addr0263);
               }
               addr03ff:
               return;
            }
            §§goto(addr0064);
         }
         §§goto(addr0060);
      }
      
      private function handlePurchaseButtonClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:CityTreasuryInternalPackItemVo = null;
         var _loc3_:ItemPurchaseEvent = null;
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:CityTreasuryInternalPackItemVo = null;
         if(_loc6_)
         {
            §§push(this._data);
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(§§pop().contentVo);
               if(_loc6_)
               {
                  §§push(§§pop() is CityTreasuryInternalPackVo);
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc6_ || Boolean(param1))
                        {
                           §§pop();
                           if(_loc6_ || Boolean(param1))
                           {
                              §§push(this._data);
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 §§push(§§pop().contentVo);
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    §§push(§§pop() is CityTreasuryRealCurrencyPackVo);
                                    if(_loc6_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc7_)
                                       {
                                          addr00b7:
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                if(this._currentSelectedPackIndex != -1)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(this._data);
                                                      if(_loc6_)
                                                      {
                                                         addr00db:
                                                         §§push(§§pop().contentVo);
                                                         if(_loc6_)
                                                         {
                                                            addr00e4:
                                                            _loc2_ = (§§pop() as CityTreasuryInternalPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
                                                            if(_loc6_ || Boolean(_loc2_))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr0112:
                                                                     if(this._data.currentRCStock >= _loc2_.price)
                                                                     {
                                                                        if(_loc6_ || Boolean(param1))
                                                                        {
                                                                           this.purchaseButton.enabled = false;
                                                                           if(!(_loc7_ && Boolean(this)))
                                                                           {
                                                                              addr0145:
                                                                              _loc3_ = new ItemPurchaseEvent(ItemPurchaseEvent.PURCHASE_ITEM_PACK,true);
                                                                              if(!(_loc7_ && Boolean(param1)))
                                                                              {
                                                                                 _loc3_.itemPack = _loc2_.paymentPack;
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr017e:
                                                                                    _loc3_.dropContainer = this.packGfx;
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       dispatchEvent(_loc3_);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0332);
                                                                              }
                                                                              §§goto(addr017e);
                                                                           }
                                                                           §§goto(addr0332);
                                                                        }
                                                                        §§goto(addr0145);
                                                                     }
                                                                     else
                                                                     {
                                                                        dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.USER_CANT_AFFORD,true,true));
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr0332);
                                                            }
                                                            §§goto(addr0112);
                                                         }
                                                         else
                                                         {
                                                            addr0263:
                                                            §§push(§§pop() is CityTreasuryExternalPackVo);
                                                            if(_loc6_ || Boolean(this))
                                                            {
                                                               addr0275:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr027f:
                                                                     dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle,(this._data.contentVo as CityTreasuryExternalPackVo).pack));
                                                                     if(!(_loc6_ || Boolean(_loc2_)))
                                                                     {
                                                                        dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle,(this._data.contentVo as CityTreasuryRentCollectorVo).pack));
                                                                        addr02cf:
                                                                        if(_loc7_ && Boolean(param1))
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr0332);
                                                                  }
                                                                  §§goto(addr02cf);
                                                               }
                                                               else
                                                               {
                                                                  addr02c5:
                                                                  addr02c1:
                                                                  addr02be:
                                                                  if(this._data.contentVo is CityTreasuryRentCollectorVo)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr02cf);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle));
                                                                  }
                                                               }
                                                               §§goto(addr0332);
                                                            }
                                                            §§goto(addr02c5);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr025a:
                                                         §§push(§§pop().contentVo);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr0263);
                                                         }
                                                      }
                                                      §§goto(addr02c1);
                                                   }
                                                   §§goto(addr02cf);
                                                }
                                                §§goto(addr0332);
                                             }
                                             §§goto(addr027f);
                                          }
                                          else
                                          {
                                             §§push(this._data);
                                             if(_loc6_)
                                             {
                                                addr01b8:
                                                §§push(§§pop().contentVo);
                                                if(_loc6_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop() is CityTreasuryRealCurrencyPackVo);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr01d3);
                                                   }
                                                   §§goto(addr0275);
                                                }
                                                §§goto(addr0263);
                                             }
                                          }
                                          §§goto(addr025a);
                                       }
                                       §§goto(addr02c5);
                                    }
                                    addr01d3:
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc4_ = null;
                                          if(_loc6_ || Boolean(_loc3_))
                                          {
                                             if(this._currentSelectedPackIndex != -1)
                                             {
                                                if(_loc6_)
                                                {
                                                   _loc5_ = (this._data.contentVo as CityTreasuryRealCurrencyPackVo).packsAsListCollection.source[this._currentSelectedPackIndex];
                                                   _loc4_ = _loc5_.paymentPack;
                                                   addr0227:
                                                   dispatchEvent(new CityTreasuryEvent(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,true,true,this._data.skinStyle,_loc4_));
                                                }
                                                §§goto(addr0332);
                                             }
                                             §§goto(addr0227);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr02cf);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this._data);
                                       if(_loc6_ || Boolean(_loc2_))
                                       {
                                          §§goto(addr025a);
                                       }
                                       §§goto(addr02be);
                                    }
                                    §§goto(addr0332);
                                 }
                                 §§goto(addr0263);
                              }
                              §§goto(addr00db);
                           }
                           addr0332:
                           return;
                        }
                     }
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00e4);
            }
            §§goto(addr01b8);
         }
         §§goto(addr027f);
      }
      
      public function set data(param1:CityTreasuryCategoryVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc2_ || Boolean(this))
               {
                  this._data = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     this._isDirty = true;
                     if(_loc2_)
                     {
                        this._currentSelectedPackIndex = -1;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr0080);
                     }
                     addr0075:
                     this.determineSkin();
                     if(_loc2_)
                     {
                        addr0080:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0058);
            }
            addr0085:
            return;
         }
         §§goto(addr0075);
      }
      
      private function determineSkin() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._data)
            {
               addr00a5:
               var _loc1_:* = this._data.skinStyle;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§push(TYPE_INTERNAL_PACK);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr0196:
                              §§push(4);
                              if(_loc3_ && Boolean(_loc1_))
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(TYPE_REAL_CURRENCY);
                           if(_loc2_)
                           {
                              addr0101:
                              §§push(_loc1_);
                              if(_loc2_ || _loc2_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(1);
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr016c:
                                       §§push(3);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(TYPE_EXTERNAL_PACK);
                                    if(!_loc3_)
                                    {
                                       §§push(_loc1_);
                                       if(_loc2_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§push(2);
                                                if(_loc2_ || _loc3_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0196);
                                             }
                                          }
                                          else
                                          {
                                             §§push(TYPE_BONUS_CODE);
                                             if(_loc2_)
                                             {
                                                addr0155:
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   addr015b:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§goto(addr016c);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0196);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(TYPE_CASH_FOR_ACTION);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!_loc3_)
                                                         {
                                                            addr018d:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr0196);
                                                               }
                                                               else
                                                               {
                                                                  addr01be:
                                                                  §§push(5);
                                                                  if(_loc2_ || Boolean(_loc1_))
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr01dd);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr01ba);
                                                            }
                                                         }
                                                         addr01ba:
                                                         §§goto(addr01b9);
                                                      }
                                                      addr01b9:
                                                      if(TYPE_RENTCOLLECTOR === _loc1_)
                                                      {
                                                         §§goto(addr01be);
                                                      }
                                                      else
                                                      {
                                                         §§push(6);
                                                      }
                                                      §§goto(addr01dd);
                                                   }
                                                   §§goto(addr01dd);
                                                }
                                                §§goto(addr018d);
                                             }
                                             §§goto(addr01b9);
                                          }
                                          §§goto(addr01dd);
                                       }
                                       §§goto(addr015b);
                                    }
                                    §§goto(addr0155);
                                 }
                                 §§goto(addr01dd);
                              }
                              §§goto(addr015b);
                           }
                           §§goto(addr0155);
                        }
                        addr01dd:
                        switch(§§pop())
                        {
                           case 0:
                              setStyle("skinClass",CityTreasuryInternalPackSkin);
                              if(_loc3_)
                              {
                              }
                              break;
                           case 1:
                              setStyle("skinClass",CityTreasuryRealCurrencySkin);
                              if(_loc3_)
                              {
                              }
                              break;
                           case 2:
                              setStyle("skinClass",CityTreasuryExternalPackSkin);
                              if(_loc2_)
                              {
                              }
                              break;
                           case 3:
                              setStyle("skinClass",CityTreasuryBonusCodeSkin);
                              if(_loc2_)
                              {
                              }
                              break;
                           case 4:
                              setStyle("skinClass",CityTreasuryCashForActionSkin);
                              if(_loc3_)
                              {
                              }
                              break;
                           case 5:
                              setStyle("skinClass",CityTreasuryRentCollectorSkin);
                              if(_loc2_)
                              {
                              }
                        }
                        §§goto(addr01f9);
                     }
                     §§goto(addr015b);
                  }
                  §§goto(addr0101);
               }
               §§goto(addr0196);
            }
            addr01f9:
            return;
         }
         §§goto(addr00a5);
      }
   }
}

