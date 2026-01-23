package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class GridItemPremiumSkin extends SparkSkin implements IStateClient2
   {
      
      private var _292147534costGroup:Group;
      
      private var _1004941354currencyIcon:BriskImageDynaLib;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var _1177829717stickyTape:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemPremiumSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.width = 120;
                  if(_loc2_)
                  {
                     this.height = 150;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr005d:
                        this.mxmlContent = [this._GridItemPremiumSkin_Group1_c()];
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr007f);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr009c);
                  }
                  addr007f:
                  this.currentState = "up";
                  if(_loc2_)
                  {
                     addr008b:
                     this.addEventListener("creationComplete",this.___GridItemPremiumSkin_SparkSkin1_creationComplete);
                     if(!_loc1_)
                     {
                        states = [new State({
                           "name":"up",
                           "overrides":[]
                        }),new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"over",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"infoIcon",
                              "name":"dynaBmpSourceName",
                              "value":"architect_icon_detailinfo_mouseover"
                           })]
                        }),new State({
                           "name":"down",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                        addr009c:
                     }
                  }
                  return;
               }
               §§goto(addr005d);
            }
            §§goto(addr009c);
         }
         §§goto(addr008b);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            TweenMax.to(this.infoIcon,0,{"glowFilter":{
               "color":13475921,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
            if(_loc3_)
            {
               TweenMax.to(this.image,0,{"glowFilter":{
                  "color":15984814,
                  "alpha":1,
                  "blurX":2,
                  "blurY":2,
                  "strength":20
               }});
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(_loc2_)
            {
               if(this.costGroup)
               {
                  if(!_loc1_)
                  {
                     §§push(this.hostComponent);
                     if(_loc2_)
                     {
                        §§push(§§pop().showPrice);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 this.costGroup.includeInLayout = true;
                                 if(_loc2_)
                                 {
                                    this.costGroup.visible = true;
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr00a2:
                                       §§push(this.infoIcon);
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc1_ && Boolean(this)))
                                             {
                                                §§push(this.hostComponent);
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   §§push(§§pop().showInfoIcon);
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      addr00dc:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            addr00e5:
                                                            §§push(this.infoIcon);
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                               addr00f6:
                                                               §§push(true);
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  §§pop().includeInLayout = §§pop();
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     addr011d:
                                                                     §§push(this.infoIcon);
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        §§goto(addr012e);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0171:
                                                                        §§push(false);
                                                                     }
                                                                     §§goto(addr0172);
                                                                  }
                                                                  §§goto(addr0179);
                                                               }
                                                               else
                                                               {
                                                                  addr0166:
                                                                  §§pop().includeInLayout = §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr0171);
                                                                     §§push(this.infoIcon);
                                                                  }
                                                               }
                                                               §§goto(addr021a);
                                                            }
                                                            addr012e:
                                                            §§push(true);
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               §§pop().visible = §§pop();
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  addr0179:
                                                                  §§push(this.newIcon);
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr0199:
                                                                           addr0196:
                                                                           if(this.hostComponent.showNewIcon)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr01a2:
                                                                                 §§push(this.newIcon);
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§pop().includeInLayout = §§pop();
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr01c0:
                                                                                          §§push(this.newIcon);
                                                                                          if(!(_loc1_ && Boolean(this)))
                                                                                          {
                                                                                             addr01d1:
                                                                                             §§push(true);
                                                                                             if(!(_loc1_ && _loc1_))
                                                                                             {
                                                                                                §§pop().visible = §§pop();
                                                                                                if(!(_loc2_ || _loc2_))
                                                                                                {
                                                                                                   addr021f:
                                                                                                   this.newIcon.visible = false;
                                                                                                   addr021a:
                                                                                                   addr021e:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0213:
                                                                                                §§pop().includeInLayout = §§pop();
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   §§goto(addr021a);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0221);
                                                                                          }
                                                                                          §§goto(addr021e);
                                                                                       }
                                                                                       §§goto(addr0221);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0205:
                                                                                    §§push(false);
                                                                                    if(_loc2_ || Boolean(this))
                                                                                    {
                                                                                       §§goto(addr0213);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr021f);
                                                                              }
                                                                              §§goto(addr0221);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.newIcon);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§goto(addr0205);
                                                                              }
                                                                           }
                                                                           §§goto(addr021e);
                                                                        }
                                                                     }
                                                                     §§goto(addr0221);
                                                                  }
                                                                  §§goto(addr01d1);
                                                               }
                                                               §§goto(addr01a2);
                                                            }
                                                            else
                                                            {
                                                               addr0172:
                                                               §§pop().visible = §§pop();
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr0179);
                                                               }
                                                            }
                                                            §§goto(addr0221);
                                                         }
                                                         §§goto(addr01c0);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.infoIcon);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(false);
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr0166);
                                                            }
                                                            §§goto(addr0172);
                                                         }
                                                      }
                                                      §§goto(addr0171);
                                                   }
                                                   §§goto(addr0199);
                                                }
                                                §§goto(addr0196);
                                             }
                                             §§goto(addr011d);
                                          }
                                          §§goto(addr0179);
                                       }
                                       §§goto(addr00f6);
                                    }
                                    §§goto(addr0221);
                                 }
                                 §§goto(addr021a);
                              }
                              §§goto(addr00a2);
                           }
                           else
                           {
                              this.costGroup.includeInLayout = false;
                              if(_loc2_)
                              {
                                 this.costGroup.visible = false;
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§goto(addr00a2);
                                 }
                                 §§goto(addr00e5);
                              }
                           }
                           §§goto(addr0221);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr0196);
                  }
               }
               §§goto(addr0221);
            }
            §§goto(addr011d);
         }
         addr0221:
      }
      
      private function _GridItemPremiumSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._GridItemPremiumSkin_Group2_i(),this._GridItemPremiumSkin_BriskImageDynaLib3_c(),this._GridItemPremiumSkin_BriskImageDynaLib4_i(),this._GridItemPremiumSkin_BriskImageDynaLib5_i(),this._GridItemPremiumSkin_BriskMCDynaLib1_i(),this._GridItemPremiumSkin_BriskImageDynaLib6_i()];
                  §§goto(addr0050);
               }
               §§goto(addr0089);
            }
            §§goto(addr0095);
         }
         addr0050:
         if(!_loc2_)
         {
            addr0089:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0095:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.bottom = 2;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._GridItemPremiumSkin_BriskImageDynaLib1_c(),this._GridItemPremiumSkin_BriskImageDynaLib2_i(),this._GridItemPremiumSkin_LocaLabel1_i()];
                  if(_loc2_)
                  {
                     _loc1_.id = "costGroup";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr009e:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr00a7);
                              }
                           }
                           §§goto(addr00b9);
                        }
                        addr00a7:
                        this.costGroup = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"costGroup",this.costGroup);
                        }
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00a7);
               }
               addr00c6:
               return _loc1_;
            }
            §§goto(addr009e);
         }
         §§goto(addr00a7);
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.dynaBmpSourceName = "architect_postit_price_slightlyLarger";
                  if(_loc2_)
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0078);
               }
            }
            §§goto(addr0068);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.bottom = 6;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.left = 8;
                  if(_loc2_)
                  {
                     _loc1_.id = "currencyIcon";
                     if(_loc2_)
                     {
                        addr005c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0075:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 §§goto(addr0086);
                              }
                              §§goto(addr0090);
                           }
                        }
                        addr0086:
                        this.currencyIcon = _loc1_;
                        if(_loc2_)
                        {
                           addr0090:
                           BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
                        }
                        §§goto(addr009d);
                     }
                  }
                  §§goto(addr0075);
               }
               addr009d:
               return _loc1_;
            }
            §§goto(addr005c);
         }
         §§goto(addr0086);
      }
      
      private function _GridItemPremiumSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "priceLabel";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.bottom = 9;
               if(_loc3_)
               {
                  _loc1_.right = 8;
                  if(!_loc2_)
                  {
                     _loc1_.text = "00.000.000";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0068:
                        _loc1_.id = "itemLabel";
                        if(_loc3_ || _loc2_)
                        {
                           addr007b:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00a4);
                                 }
                              }
                              §§goto(addr00b6);
                           }
                        }
                     }
                  }
                  addr00a4:
                  this.itemLabel = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00b6:
                     BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                  }
                  return _loc1_;
               }
               §§goto(addr0068);
            }
            §§goto(addr007b);
         }
         §§goto(addr0068);
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               addr003f:
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.top = 6;
                  if(_loc3_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr007d);
            }
            addr0066:
            _loc1_.dynaBmpSourceName = "architect_goldprint_small";
            if(_loc3_)
            {
               addr0071:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = -12;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "image";
                  if(_loc2_)
                  {
                     addr0056:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr007f:
                              this.image = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0091:
                                 BindingManager.executeBindings(this,"image",this.image);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0056);
            }
            §§goto(addr0091);
         }
         §§goto(addr0056);
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.bottom = 43;
               if(_loc2_)
               {
                  addr0037:
                  _loc1_.right = 15;
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.id = "infoIcon";
                        if(_loc2_)
                        {
                           addr006a:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr008a);
                              }
                           }
                           §§goto(addr0093);
                        }
                        addr008a:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0093:
                           this.infoIcon = _loc1_;
                           if(_loc2_)
                           {
                              BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr006a);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0037);
         }
         §§goto(addr0093);
      }
      
      private function _GridItemPremiumSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.top = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc3_)
                  {
                     addr005b:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc2_)
                     {
                        _loc1_.id = "stickyTape";
                        if(_loc2_ || _loc3_)
                        {
                           addr007a:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr00a1);
                                 }
                              }
                              §§goto(addr00ab);
                           }
                        }
                     }
                     addr00a1:
                     this.stickyTape = _loc1_;
                     if(_loc2_)
                     {
                        addr00ab:
                        BindingManager.executeBindings(this,"stickyTape",this.stickyTape);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00ab);
               }
               addr00b8:
               return _loc1_;
            }
            §§goto(addr007a);
         }
         §§goto(addr005b);
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.bottom = 110;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.right = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "new_icon";
                     if(_loc2_)
                     {
                        _loc1_.id = "newIcon";
                        if(_loc2_ || Boolean(this))
                        {
                           addr007b:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr009a);
                              }
                           }
                           §§goto(addr00ab);
                        }
                        addr009a:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr00ab:
                           this.newIcon = _loc1_;
                           if(_loc2_)
                           {
                              BindingManager.executeBindings(this,"newIcon",this.newIcon);
                           }
                        }
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr00ab);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      public function ___GridItemPremiumSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costGroup() : Group
      {
         return this._292147534costGroup;
      }
      
      public function set costGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._292147534costGroup;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._292147534costGroup = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyIcon() : BriskImageDynaLib
      {
         return this._1004941354currencyIcon;
      }
      
      public function set currencyIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1004941354currencyIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1004941354currencyIcon = param1;
                  if(_loc3_)
                  {
                     addr0045:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0045);
            }
            addr0064:
            return;
         }
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._100313435image;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr004e:
                  this._100313435image = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0067);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._177606215infoIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0049:
                  this._177606215infoIcon = param1;
                  if(_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0053);
            }
            addr0071:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2135689121itemLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2135689121itemLabel = param1;
                  addr0036:
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0062);
               }
               addr0052:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0062:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0071);
            }
            addr0071:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get newIcon() : BriskImageDynaLib
      {
         return this._1844873785newIcon;
      }
      
      public function set newIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844873785newIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1844873785newIcon = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0069);
               }
               addr0052:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
            addr0078:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get stickyTape() : BriskMCDynaLib
      {
         return this._1177829717stickyTape;
      }
      
      public function set stickyTape(param1:BriskMCDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1177829717stickyTape;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1177829717stickyTape = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0079);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stickyTape",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr0060);
      }
   }
}

