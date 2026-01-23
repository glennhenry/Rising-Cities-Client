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
   
   public class GridItemNormalSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _292147534costGroup:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var _2126080670priceIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemNormalSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.width = 120;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0042:
                     this.height = 150;
                     if(_loc2_)
                     {
                        §§goto(addr004d);
                     }
                  }
                  §§goto(addr0063);
               }
               addr004d:
               this.mxmlContent = [this._GridItemNormalSkin_Group1_c(),this._GridItemNormalSkin_BriskImageDynaLib6_i()];
               if(_loc2_)
               {
                  addr0063:
                  this.currentState = "up";
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr0081);
                  }
                  §§goto(addr0091);
               }
               addr0081:
               this.addEventListener("creationComplete",this.___GridItemNormalSkin_SparkSkin1_creationComplete);
               if(_loc2_)
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
               return;
            }
            §§goto(addr0042);
         }
         §§goto(addr0091);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr004b);
                  }
               }
               else
               {
                  addr0059:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr004b:
            return;
         }
         §§goto(addr0059);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            TweenMax.to(this.infoIcon,0,{"glowFilter":{
               "color":2204858,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
            if(!(_loc3_ && Boolean(param1)))
            {
               TweenMax.to(this.image,0,{"glowFilter":{
                  "color":11462643,
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               if(this.costGroup)
               {
                  if(_loc1_)
                  {
                     §§push(this.hostComponent);
                     if(_loc1_)
                     {
                        §§push(§§pop().showPrice);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 this.costGroup.includeInLayout = true;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    this.costGroup.visible = true;
                                    if(_loc1_ || _loc1_)
                                    {
                                    }
                                    addr0089:
                                    §§push(this.infoIcon);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr00b3:
                                             addr00b0:
                                             if(this.hostComponent.showInfoIcon)
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   addr00c4:
                                                   §§push(this.infoIcon);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(true);
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().includeInLayout = §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            addr00e2:
                                                            §§push(this.infoIcon);
                                                            if(_loc1_ || Boolean(this))
                                                            {
                                                               §§push(true);
                                                               if(_loc1_)
                                                               {
                                                                  addr00f9:
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc2_ && _loc1_)
                                                                  {
                                                                     addr0139:
                                                                     this.infoIcon.visible = false;
                                                                     addr0134:
                                                                     addr0138:
                                                                  }
                                                                  §§goto(addr013b);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr011f:
                                                               §§push(false);
                                                               if(_loc1_)
                                                               {
                                                                  §§pop().includeInLayout = §§pop();
                                                                  if(_loc1_ || Boolean(this))
                                                                  {
                                                                     §§goto(addr0134);
                                                                  }
                                                                  §§goto(addr013b);
                                                               }
                                                            }
                                                            §§goto(addr0139);
                                                         }
                                                         §§goto(addr0134);
                                                      }
                                                      §§goto(addr00f9);
                                                   }
                                                   §§goto(addr011f);
                                                }
                                                §§goto(addr013b);
                                             }
                                             else
                                             {
                                                §§push(this.infoIcon);
                                                if(_loc1_)
                                                {
                                                   §§goto(addr011f);
                                                }
                                             }
                                             §§goto(addr0138);
                                          }
                                          §§goto(addr00c4);
                                       }
                                       §§goto(addr013b);
                                    }
                                    §§goto(addr0138);
                                 }
                                 §§goto(addr013b);
                              }
                              §§goto(addr0089);
                           }
                           else
                           {
                              this.costGroup.includeInLayout = false;
                              if(!_loc2_)
                              {
                                 this.costGroup.visible = false;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0089);
                                 }
                                 §§goto(addr00e2);
                              }
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr0134);
               }
               §§goto(addr013b);
            }
            §§goto(addr0134);
         }
         addr013b:
      }
      
      private function _GridItemNormalSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._GridItemNormalSkin_Group2_i(),this._GridItemNormalSkin_BriskImageDynaLib3_i(),this._GridItemNormalSkin_BriskImageDynaLib4_i(),this._GridItemNormalSkin_BriskImageDynaLib5_i(),this._GridItemNormalSkin_BriskMCDynaLib1_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0086:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr009a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009a);
            }
         }
         §§goto(addr0086);
      }
      
      private function _GridItemNormalSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.bottom = 2;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._GridItemNormalSkin_BriskImageDynaLib1_c(),this._GridItemNormalSkin_BriskImageDynaLib2_i(),this._GridItemNormalSkin_LocaLabel1_i()];
                  if(_loc2_ || Boolean(this))
                  {
                     addr006d:
                     _loc1_.id = "costGroup";
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00a1:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00b4);
                           }
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00a1);
               }
               addr00aa:
               this.costGroup = _loc1_;
               if(_loc2_)
               {
                  addr00b4:
                  BindingManager.executeBindings(this,"costGroup",this.costGroup);
               }
               §§goto(addr00c1);
            }
            addr00c1:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0044:
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0064);
               }
               §§goto(addr006f);
            }
            addr0064:
            _loc1_.dynaBmpSourceName = "architect_postit_price";
            if(_loc2_)
            {
               addr006f:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.bottom = 6;
               if(_loc2_)
               {
                  _loc1_.left = 14;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "priceIcon";
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a5:
                                 this.priceIcon = _loc1_;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00b7:
                                    BindingManager.executeBindings(this,"priceIcon",this.priceIcon);
                                 }
                              }
                              §§goto(addr00c4);
                           }
                        }
                        §§goto(addr00a5);
                     }
                  }
                  addr00c4:
                  return _loc1_;
               }
               §§goto(addr00a5);
            }
            §§goto(addr0087);
         }
         §§goto(addr00b7);
      }
      
      private function _GridItemNormalSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "priceLabel";
            if(!_loc2_)
            {
               _loc1_.bottom = 9;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.right = 15;
                  if(!_loc2_)
                  {
                     _loc1_.text = "00.000.000";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006c:
                        _loc1_.id = "itemLabel";
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0098:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00a1);
                                 }
                              }
                              §§goto(addr00ab);
                           }
                           addr00a1:
                           this.itemLabel = _loc1_;
                           if(_loc3_)
                           {
                              addr00ab:
                              BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr00ab);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_storagePopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = 6;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006d:
                     _loc1_.id = "backgroundPrint";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00a2:
                                 this.backgroundPrint = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00ac:
                                    BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                                 }
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00ac);
                  }
                  addr00b9:
                  return _loc1_;
               }
               §§goto(addr00ac);
            }
            §§goto(addr006d);
         }
         §§goto(addr00ac);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = -12;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     addr006a:
                     _loc1_.id = "image";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr009f:
                                 this.image = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b1:
                                    BindingManager.executeBindings(this,"image",this.image);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b1);
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00b1);
               }
            }
         }
         §§goto(addr006a);
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               addr002b:
               _loc1_.bottom = 40;
               if(!_loc3_)
               {
                  _loc1_.right = 10;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0054:
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(!_loc3_)
                     {
                        _loc1_.id = "infoIcon";
                        if(_loc2_ || _loc2_)
                        {
                           addr0072:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr008a:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0093:
                                    this.infoIcon = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00a5:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00a5);
            }
            §§goto(addr0054);
         }
         §§goto(addr002b);
      }
      
      private function _GridItemNormalSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.top = 0;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005e:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc3_ || _loc3_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0072);
            }
            §§goto(addr005e);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _GridItemNormalSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = 0;
               if(!_loc3_)
               {
                  addr0046:
                  _loc1_.right = 0;
                  if(!_loc3_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc2_)
                     {
                        _loc1_.visible = false;
                        if(_loc2_)
                        {
                           _loc1_.dynaBmpSourceName = "new_icon";
                           if(_loc2_)
                           {
                              _loc1_.id = "newIcon";
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr008f);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr008f);
                        }
                        §§goto(addr00c1);
                     }
                     addr008f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr00a6:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr00b7);
                           }
                           §§goto(addr00c1);
                        }
                     }
                     §§goto(addr00b7);
                  }
               }
               §§goto(addr00a6);
            }
            addr00b7:
            this.newIcon = _loc1_;
            if(_loc2_)
            {
               addr00c1:
               BindingManager.executeBindings(this,"newIcon",this.newIcon);
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      public function ___GridItemNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1299216927backgroundPrint = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006f);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._292147534costGroup = param1;
                  addr0036:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0036);
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
               if(_loc4_)
               {
                  this._100313435image = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._177606215infoIcon = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
            addr007a:
            return;
         }
         §§goto(addr0054);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._2135689121itemLabel = param1;
                  if(_loc4_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
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
         §§goto(addr005f);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1844873785newIcon = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0063);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0063:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0072);
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get priceIcon() : BriskImageDynaLib
      {
         return this._2126080670priceIcon;
      }
      
      public function set priceIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2126080670priceIcon;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2126080670priceIcon = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceIcon",_loc2_,param1));
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
   }
}

