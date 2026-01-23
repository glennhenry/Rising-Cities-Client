package net.bigpoint.cityrama.view.boosterpackstore.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class GridItemSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _292147534costGroup:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _2126080670priceIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.width = 120;
                  if(_loc2_)
                  {
                     this.height = 150;
                     if(!_loc1_)
                     {
                        addr005d:
                        this.mxmlContent = [this._GridItemSkin_Group1_c()];
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr007f);
                        }
                     }
                     §§goto(addr008b);
                  }
                  addr007f:
                  this.currentState = "up";
                  if(_loc2_)
                  {
                     addr008b:
                     this.addEventListener("creationComplete",this.___GridItemSkin_SparkSkin1_creationComplete);
                     if(!(_loc1_ && _loc2_))
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
                     }
                  }
                  §§goto(addr0122);
               }
               addr0122:
               return;
            }
         }
         §§goto(addr005d);
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
                  if(!_loc3_)
                  {
                     §§goto(addr002d);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr002d:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            TweenMax.to(this.infoIcon,0,{"glowFilter":{
               "color":13475921,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
            if(_loc2_)
            {
               addr0068:
               TweenMax.to(this.image,0,{"glowFilter":{
                  "color":15984814,
                  "alpha":1,
                  "blurX":2,
                  "blurY":2,
                  "strength":20
               }});
            }
            return;
         }
         §§goto(addr0068);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               if(this.costGroup)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.hostComponent);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(§§pop().showPrice);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 this.costGroup.includeInLayout = true;
                                 if(!_loc1_)
                                 {
                                    this.costGroup.visible = true;
                                    if(_loc2_)
                                    {
                                       addr009c:
                                       §§push(this.infoIcon);
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                addr00bc:
                                                addr00b9:
                                                if(this.hostComponent.showInfoIcon)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      §§push(this.infoIcon);
                                                      if(!_loc1_)
                                                      {
                                                         §§push(true);
                                                         if(!_loc1_)
                                                         {
                                                            §§pop().includeInLayout = §§pop();
                                                            if(_loc2_)
                                                            {
                                                               addr00db:
                                                               §§push(this.infoIcon);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  addr00ec:
                                                                  §§push(true);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§pop().visible = §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0132:
                                                                     §§pop().visible = §§pop();
                                                                  }
                                                                  §§goto(addr0134);
                                                               }
                                                               else
                                                               {
                                                                  addr0118:
                                                                  §§push(false);
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     addr0126:
                                                                     §§pop().includeInLayout = §§pop();
                                                                     if(!_loc1_)
                                                                     {
                                                                        addr0131:
                                                                        addr012d:
                                                                        §§goto(addr0132);
                                                                        §§push(this.infoIcon);
                                                                        §§push(false);
                                                                     }
                                                                     §§goto(addr0134);
                                                                  }
                                                               }
                                                               §§goto(addr0132);
                                                            }
                                                            §§goto(addr0134);
                                                         }
                                                         §§goto(addr0126);
                                                      }
                                                      §§goto(addr0131);
                                                   }
                                                   §§goto(addr0134);
                                                }
                                                else
                                                {
                                                   §§push(this.infoIcon);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §§goto(addr0118);
                                                   }
                                                }
                                                §§goto(addr0131);
                                             }
                                          }
                                          §§goto(addr0134);
                                       }
                                       §§goto(addr00ec);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr0134);
                              }
                              §§goto(addr009c);
                           }
                           else
                           {
                              this.costGroup.includeInLayout = false;
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 this.costGroup.visible = false;
                                 if(_loc2_)
                                 {
                                    §§goto(addr009c);
                                 }
                                 §§goto(addr012d);
                              }
                           }
                           §§goto(addr0134);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00b9);
                  }
               }
               §§goto(addr0134);
            }
            §§goto(addr00db);
         }
         addr0134:
      }
      
      private function _GridItemSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._GridItemSkin_Group2_i(),this._GridItemSkin_BriskImageDynaLib3_i(),this._GridItemSkin_BriskImageDynaLib4_i(),this._GridItemSkin_BriskImageDynaLib5_i(),this._GridItemSkin_BriskMCDynaLib1_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _GridItemSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.bottom = 2;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._GridItemSkin_BriskImageDynaLib1_c(),this._GridItemSkin_BriskImageDynaLib2_i(),this._GridItemSkin_LocaLabel1_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "costGroup";
                     if(!_loc3_)
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a7:
                                 this.costGroup = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    BindingManager.executeBindings(this,"costGroup",this.costGroup);
                                 }
                              }
                              §§goto(addr00c6);
                           }
                        }
                        §§goto(addr00a7);
                     }
                     addr00c6:
                     return _loc1_;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0075);
            }
            §§goto(addr00a7);
         }
         §§goto(addr0089);
      }
      
      private function _GridItemSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.dynaBmpSourceName = "architect_postit_price";
                  addr0057:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0077:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr008b:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr008b);
               }
               addr008f:
               return _loc1_;
            }
            §§goto(addr0057);
         }
         §§goto(addr0077);
      }
      
      private function _GridItemSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!_loc3_)
            {
               _loc1_.bottom = 6;
               if(_loc2_)
               {
                  _loc1_.left = 14;
                  if(_loc2_)
                  {
                     _loc1_.id = "priceIcon";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr0090:
                                 this.priceIcon = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr009a:
                                    BindingManager.executeBindings(this,"priceIcon",this.priceIcon);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr0066);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _GridItemSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "priceLabel";
            if(_loc3_)
            {
               §§goto(addr0034);
            }
            §§goto(addr00ac);
         }
         addr0034:
         _loc1_.bottom = 9;
         if(_loc3_ || Boolean(this))
         {
            _loc1_.right = 15;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.text = "00.000.000";
               if(!_loc2_)
               {
                  _loc1_.id = "itemLabel";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0083);
                  }
                  §§goto(addr008f);
               }
               addr0083:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr008f:
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr00ac);
                     }
                  }
                  §§goto(addr00be);
               }
               addr00ac:
               this.itemLabel = _loc1_;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr00be:
                  BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
               }
               §§goto(addr00cb);
            }
            §§goto(addr00be);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _GridItemSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_storagePopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.top = 6;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr005b:
                     _loc1_.id = "backgroundPrint";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0087);
                              }
                              §§goto(addr0091);
                           }
                        }
                     }
                     addr0087:
                     this.backgroundPrint = _loc1_;
                     if(_loc3_)
                     {
                        addr0091:
                        BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                     }
                     §§goto(addr009e);
                  }
                  addr009e:
                  return _loc1_;
               }
               §§goto(addr0087);
            }
            §§goto(addr0091);
         }
         §§goto(addr005b);
      }
      
      private function _GridItemSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(_loc3_)
            {
               _loc1_.verticalCenter = -12;
               if(!(_loc2_ && _loc2_))
               {
                  addr0050:
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.id = "image";
                     if(_loc3_ || _loc3_)
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a0:
                                 this.image = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"image",this.image);
                                 }
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00a0);
                     }
                     addr00b7:
                     return _loc1_;
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr006d);
            }
            §§goto(addr0050);
         }
         §§goto(addr008f);
      }
      
      private function _GridItemSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.bottom = 43;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.right = 15;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr007c:
                        _loc1_.id = "infoIcon";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr008f);
                        }
                     }
                     §§goto(addr00a7);
                  }
                  addr008f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00a7:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr00b0);
                        }
                        §§goto(addr00c2);
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00a7);
            }
            addr00b0:
            this.infoIcon = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr00c2:
               BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
            }
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _GridItemSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               addr003c:
               _loc1_.top = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006c:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc3_)
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr006c);
            }
            addr0078:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0084:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      public function ___GridItemSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1299216927backgroundPrint = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._292147534costGroup = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005a);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._100313435image = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0075);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._177606215infoIcon = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._2135689121itemLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr007c);
            }
         }
         addr008b:
      }
      
      [Bindable(event="propertyChange")]
      public function get priceIcon() : BriskImageDynaLib
      {
         return this._2126080670priceIcon;
      }
      
      public function set priceIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2126080670priceIcon;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2126080670priceIcon = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
         }
         addr0080:
      }
   }
}

