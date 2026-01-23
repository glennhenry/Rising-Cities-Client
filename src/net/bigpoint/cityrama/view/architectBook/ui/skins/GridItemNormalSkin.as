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
   
   public class GridItemNormalSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _292147534costGroup:Group;
      
      private var _1004941354currencyIcon:BriskImageDynaLib;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var _1177829717stickyTape:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemNormalSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.width = 120;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr004a:
                     this.height = 150;
                     if(_loc2_)
                     {
                        addr0055:
                        this.mxmlContent = [this._GridItemNormalSkin_Group1_c(),this._GridItemNormalSkin_BriskImageDynaLib6_i()];
                        if(_loc2_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr0091);
                  }
               }
               §§goto(addr0055);
            }
            addr0075:
            this.currentState = "up";
            if(!_loc1_)
            {
               addr0081:
               this.addEventListener("creationComplete",this.___GridItemNormalSkin_SparkSkin1_creationComplete);
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
                  addr0091:
               }
            }
            return;
         }
         §§goto(addr004a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0041);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr0041:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            TweenMax.to(this.infoIcon,0,{"glowFilter":{
               "color":2204858,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
            if(_loc2_ || Boolean(param1))
            {
               TweenMax.to(this.image,0,{"glowFilter":{
                  "color":11462643,
                  "alpha":1,
                  "blurX":2,
                  "blurY":2,
                  "strength":20
               }});
               if(_loc2_)
               {
                  §§push(this.backgroundPrint);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push("architect_blueprint1_small");
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop().dynaBmpSourceName = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.hostComponent);
                           if(_loc2_)
                           {
                              §§push(§§pop().itemIndex);
                              if(_loc2_ || Boolean(param1))
                              {
                                 §§push(1);
                                 if(_loc2_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          addr00eb:
                                          §§push(this.hostComponent);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().itemIndex);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(3);
                                                if(_loc2_)
                                                {
                                                   addr010a:
                                                   §§push(§§pop() % §§pop());
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(0);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc2_ || Boolean(param1))
                                                            {
                                                               addr0138:
                                                               §§push(this.backgroundPrint);
                                                               if(!_loc3_)
                                                               {
                                                                  addr0141:
                                                                  §§push("architect_blueprint3_small");
                                                                  if(!(_loc3_ && Boolean(param1)))
                                                                  {
                                                                     addr0152:
                                                                     §§pop().dynaBmpSourceName = §§pop();
                                                                     if(_loc3_ && Boolean(param1))
                                                                     {
                                                                        addr0196:
                                                                        this.backgroundPrint.dynaBmpSourceName = "architect_blueprint2_small";
                                                                        addr0192:
                                                                        addr018e:
                                                                     }
                                                                     §§goto(addr0198);
                                                                  }
                                                                  §§goto(addr0196);
                                                               }
                                                               §§goto(addr0192);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr017d:
                                                            addr017b:
                                                            addr017a:
                                                            addr0178:
                                                            addr0175:
                                                            if(this.hostComponent.itemIndex % 2 == 0)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§goto(addr018e);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0198);
                                                      }
                                                      §§goto(addr017d);
                                                   }
                                                   §§goto(addr017b);
                                                }
                                                §§goto(addr017a);
                                             }
                                             §§goto(addr0178);
                                          }
                                          §§goto(addr0175);
                                       }
                                    }
                                    §§goto(addr0198);
                                 }
                                 §§goto(addr010a);
                              }
                              §§goto(addr0178);
                           }
                           §§goto(addr0175);
                        }
                        §§goto(addr00eb);
                     }
                     §§goto(addr0152);
                  }
                  §§goto(addr0141);
               }
               §§goto(addr00eb);
            }
            addr0198:
            return;
         }
         §§goto(addr0138);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this.costGroup)
               {
                  if(_loc2_)
                  {
                     §§push(this.hostComponent);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop().showPrice);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 addr0056:
                                 this.costGroup.includeInLayout = true;
                                 if(!_loc1_)
                                 {
                                    addr0062:
                                    this.costGroup.visible = true;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr009c:
                                       §§push(this.infoIcon);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr00c4:
                                                addr00c1:
                                                if(this.hostComponent.showInfoIcon)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr00cd:
                                                      §§push(this.infoIcon);
                                                      if(!_loc1_)
                                                      {
                                                         addr00d6:
                                                         §§push(true);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§pop().includeInLayout = §§pop();
                                                            if(_loc2_)
                                                            {
                                                               addr00eb:
                                                               §§push(this.infoIcon);
                                                               if(!_loc1_)
                                                               {
                                                                  §§push(true);
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     §§pop().visible = §§pop();
                                                                     if(_loc1_ && Boolean(this))
                                                                     {
                                                                        addr013a:
                                                                        this.infoIcon.visible = false;
                                                                        addr0135:
                                                                        addr0139:
                                                                     }
                                                                     §§goto(addr013c);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0128:
                                                                  §§push(false);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§pop().includeInLayout = §§pop();
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§goto(addr0135);
                                                                     }
                                                                     §§goto(addr013c);
                                                                  }
                                                               }
                                                               §§goto(addr013a);
                                                            }
                                                            §§goto(addr013c);
                                                         }
                                                         §§goto(addr013a);
                                                      }
                                                      §§goto(addr0128);
                                                   }
                                                   §§goto(addr013c);
                                                }
                                                else
                                                {
                                                   §§push(this.infoIcon);
                                                   if(!_loc1_)
                                                   {
                                                      §§goto(addr0128);
                                                   }
                                                }
                                                §§goto(addr0139);
                                             }
                                             §§goto(addr00cd);
                                          }
                                          §§goto(addr013c);
                                       }
                                       §§goto(addr00d6);
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr013c);
                           }
                           else
                           {
                              this.costGroup.includeInLayout = false;
                              if(_loc2_)
                              {
                                 this.costGroup.visible = false;
                                 addr0086:
                                 if(!_loc1_)
                                 {
                                    §§goto(addr009c);
                                 }
                                 §§goto(addr00cd);
                              }
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr0086);
               }
               addr013c:
               return;
            }
            §§goto(addr0062);
         }
         §§goto(addr0056);
      }
      
      private function _GridItemNormalSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._GridItemNormalSkin_Group2_i(),this._GridItemNormalSkin_BriskImageDynaLib3_i(),this._GridItemNormalSkin_BriskImageDynaLib4_i(),this._GridItemNormalSkin_BriskImageDynaLib5_i(),this._GridItemNormalSkin_BriskMCDynaLib1_i()];
                  addr005a:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0094);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0094);
            }
            §§goto(addr005a);
         }
         addr0094:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc2_)
            {
               addr00a8:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _GridItemNormalSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.bottom = 2;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._GridItemNormalSkin_BriskImageDynaLib1_c(),this._GridItemNormalSkin_BriskImageDynaLib2_i(),this._GridItemNormalSkin_LocaLabel1_i()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "costGroup";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a3:
                                 this.costGroup = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00ad:
                                    BindingManager.executeBindings(this,"costGroup",this.costGroup);
                                 }
                              }
                           }
                           §§goto(addr00ba);
                        }
                     }
                  }
                  §§goto(addr00a3);
               }
               addr00ba:
               return _loc1_;
            }
            §§goto(addr00ad);
         }
         §§goto(addr00a3);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.dynaBmpSourceName = "architect_postit_price_slightlyLarger";
                  addr0057:
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0076);
            }
            §§goto(addr0057);
         }
         addr0076:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               addr008a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.bottom = 6;
            if(!_loc2_)
            {
               §§goto(addr002a);
            }
            §§goto(addr0049);
         }
         addr002a:
         _loc1_.left = 5;
         if(_loc3_ || _loc2_)
         {
            addr0049:
            _loc1_.id = "currencyIcon";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0060:
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr007d:
                        this.currencyIcon = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
                        }
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr007d);
            }
            §§goto(addr0060);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _GridItemNormalSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "priceLabel";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.bottom = 8;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.right = 8;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0064:
                     _loc1_.text = "00.000.000";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "itemLabel";
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00a2:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00ab);
                                 }
                              }
                              §§goto(addr00bd);
                           }
                           addr00ab:
                           this.itemLabel = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              addr00bd:
                              BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00a2);
               }
            }
            addr00ca:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = 6;
                  if(_loc3_)
                  {
                     addr005d:
                     _loc1_.id = "backgroundPrint";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr007c:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr0099:
                                 this.backgroundPrint = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00ab:
                                    BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr005d);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = -12;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "image";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr0087);
                           }
                        }
                        §§goto(addr0099);
                     }
                     addr0087:
                     this.image = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr0099:
                        BindingManager.executeBindings(this,"image",this.image);
                     }
                     §§goto(addr00a6);
                  }
               }
               addr00a6:
               return _loc1_;
            }
         }
         §§goto(addr0099);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
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
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.right = 15;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(!_loc3_)
                     {
                        addr0066:
                        _loc1_.id = "infoIcon";
                        if(!_loc3_)
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a2:
                                    this.infoIcon = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00ac:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00a2);
                        }
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0071);
            }
            §§goto(addr005b);
         }
         §§goto(addr0066);
      }
      
      private function _GridItemNormalSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.top = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr008c);
               }
               addr005f:
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "stickyTape";
                  if(!_loc3_)
                  {
                     addr008c:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr00a1);
                           }
                        }
                        §§goto(addr00ab);
                     }
                  }
               }
               §§goto(addr00a1);
            }
            §§goto(addr00ab);
         }
         addr00a1:
         this.stickyTape = _loc1_;
         if(!_loc3_)
         {
            addr00ab:
            BindingManager.executeBindings(this,"stickyTape",this.stickyTape);
         }
         return _loc1_;
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.right = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.includeInLayout = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0075:
                        _loc1_.visible = false;
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.dynaBmpSourceName = "new_icon";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr0099);
                           }
                           §§goto(addr00df);
                        }
                     }
                     §§goto(addr00c4);
                  }
               }
            }
            §§goto(addr0075);
         }
         addr0099:
         _loc1_.id = "newIcon";
         if(!_loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr00c4:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00d5:
                     this.newIcon = _loc1_;
                     if(_loc3_)
                     {
                        addr00df:
                        BindingManager.executeBindings(this,"newIcon",this.newIcon);
                     }
                  }
               }
               §§goto(addr00ec);
            }
            §§goto(addr00d5);
         }
         addr00ec:
         return _loc1_;
      }
      
      public function ___GridItemNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1299216927backgroundPrint = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get costGroup() : Group
      {
         return this._292147534costGroup;
      }
      
      public function set costGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._292147534costGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._292147534costGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
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
               if(_loc3_)
               {
                  this._1004941354currencyIcon = param1;
                  if(_loc3_)
                  {
                     addr003e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005d);
               }
               §§goto(addr003e);
            }
            addr005d:
            return;
         }
         §§goto(addr003e);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0056:
                  this._100313435image = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr006f);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._177606215infoIcon;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._177606215infoIcon = param1;
                  addr0041:
                  if(_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0041);
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
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._2135689121itemLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get newIcon() : BriskImageDynaLib
      {
         return this._1844873785newIcon;
      }
      
      public function set newIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1844873785newIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1844873785newIcon = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get stickyTape() : BriskMCDynaLib
      {
         return this._1177829717stickyTape;
      }
      
      public function set stickyTape(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177829717stickyTape;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1177829717stickyTape = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stickyTape",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
   }
}

