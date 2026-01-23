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
   
   public class GridItemGoodSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _292147534costGroup:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemGoodSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.width = 120;
                  if(!_loc1_)
                  {
                     this.height = 150;
                     if(_loc2_ || _loc2_)
                     {
                        this.mxmlContent = [this._GridItemGoodSkin_Group1_c()];
                        if(!(_loc1_ && Boolean(this)))
                        {
                           this.currentState = "up";
                           addr006d:
                           if(_loc2_ || _loc1_)
                           {
                              addr008b:
                              this.addEventListener("creationComplete",this.___GridItemGoodSkin_SparkSkin1_creationComplete);
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
                                 addr00a4:
                              }
                              §§goto(addr0122);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr0122);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr006d);
            }
            addr0122:
            return;
         }
         §§goto(addr00a4);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
               addr0057:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0057);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            TweenMax.to(this.infoIcon,0,{"glowFilter":{
               "color":2204858,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
            if(_loc3_ || Boolean(param1))
            {
               §§push(this.hostComponent);
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§push(§§pop().itemIndex);
                  if(!_loc2_)
                  {
                     §§push(1);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(this.hostComponent);
                              if(!_loc2_)
                              {
                                 addr0094:
                                 §§push(§§pop().itemIndex);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§push(3);
                                    if(!_loc2_)
                                    {
                                       addr00ab:
                                       §§push(§§pop() % §§pop());
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(0);
                                          if(!_loc2_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(this.backgroundPrint);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push("ressource_cardboard3_small");
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§pop().dynaBmpSourceName = §§pop();
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr012c:
                                                         §§pop().dynaBmpSourceName = §§pop();
                                                      }
                                                      §§goto(addr012e);
                                                   }
                                                   else
                                                   {
                                                      addr0128:
                                                      §§push("ressource_cardboard2_small");
                                                   }
                                                   §§goto(addr012c);
                                                }
                                             }
                                             else
                                             {
                                                addr0113:
                                                addr0111:
                                                addr0110:
                                                addr010e:
                                                addr010b:
                                                if(this.hostComponent.itemIndex % 2 == 0)
                                                {
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr0124:
                                                      §§goto(addr0128);
                                                      §§push(this.backgroundPrint);
                                                   }
                                                }
                                             }
                                             §§goto(addr012e);
                                          }
                                          §§goto(addr0113);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0110);
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr010b);
                           }
                        }
                        §§goto(addr012e);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr010e);
               }
               §§goto(addr0094);
            }
            §§goto(addr0124);
         }
         addr012e:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               if(this.costGroup)
               {
                  if(!_loc2_)
                  {
                     §§push(this.hostComponent);
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(§§pop().showPrice);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.costGroup.includeInLayout = true;
                                 if(!_loc2_)
                                 {
                                    this.costGroup.visible = true;
                                    if(_loc2_)
                                    {
                                    }
                                    addr00ab:
                                    §§push(this.infoIcon);
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             addr00cb:
                                             addr00c8:
                                             if(this.hostComponent.showInfoIcon)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(this.infoIcon);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(true);
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().includeInLayout = §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            addr00fa:
                                                            §§push(this.infoIcon);
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               addr0115:
                                                               §§push(true);
                                                               if(_loc1_)
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0135:
                                                                  §§pop().includeInLayout = §§pop();
                                                                  if(_loc1_)
                                                                  {
                                                                     addr0141:
                                                                     this.infoIcon.visible = false;
                                                                     addr0140:
                                                                     addr013c:
                                                                  }
                                                               }
                                                               §§goto(addr0143);
                                                            }
                                                            §§goto(addr0140);
                                                         }
                                                         §§goto(addr013c);
                                                      }
                                                      §§goto(addr0135);
                                                   }
                                                   else
                                                   {
                                                      addr012f:
                                                      §§push(false);
                                                      if(_loc1_)
                                                      {
                                                         §§goto(addr0135);
                                                      }
                                                   }
                                                   §§goto(addr0141);
                                                }
                                                §§goto(addr0143);
                                             }
                                             else
                                             {
                                                §§push(this.infoIcon);
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr012f);
                                                }
                                             }
                                             §§goto(addr0140);
                                          }
                                          §§goto(addr00fa);
                                       }
                                       §§goto(addr0143);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr0143);
                              }
                              §§goto(addr013c);
                           }
                           else
                           {
                              this.costGroup.includeInLayout = false;
                              if(!(_loc2_ && _loc2_))
                              {
                                 this.costGroup.visible = false;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00ab);
                                 }
                                 §§goto(addr0143);
                              }
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00c8);
                  }
               }
               addr0143:
               return;
            }
            §§goto(addr00fa);
         }
         §§goto(addr013c);
      }
      
      private function _GridItemGoodSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._GridItemGoodSkin_Group2_i(),this._GridItemGoodSkin_BriskImageDynaLib3_i(),this._GridItemGoodSkin_BriskImageDynaLib4_i(),this._GridItemGoodSkin_BriskImageDynaLib5_i(),this._GridItemGoodSkin_BriskMCDynaLib1_c()];
                  addr0042:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      private function _GridItemGoodSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.bottom = 2;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._GridItemGoodSkin_BriskImageDynaLib1_c(),this._GridItemGoodSkin_BriskImageDynaLib2_c(),this._GridItemGoodSkin_LocaLabel1_i()];
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr0062);
               }
               §§goto(addr009d);
            }
            §§goto(addr00a7);
         }
         addr0062:
         _loc1_.id = "costGroup";
         if(_loc2_ || _loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr009d);
                  }
                  §§goto(addr00a7);
               }
            }
            addr009d:
            this.costGroup = _loc1_;
            if(!_loc3_)
            {
               addr00a7:
               BindingManager.executeBindings(this,"costGroup",this.costGroup);
            }
            §§goto(addr00b4);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _GridItemGoodSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "architect_postit_price";
                  addr0057:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr008b:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr008b);
         }
         §§goto(addr0057);
      }
      
      private function _GridItemGoodSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.bottom = 6;
               if(_loc3_)
               {
                  §§goto(addr005e);
               }
            }
            §§goto(addr0068);
         }
         addr005e:
         _loc1_.left = 14;
         if(!_loc2_)
         {
            addr0068:
            _loc1_.dynaBmpSourceName = "cc_icon_small";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0080:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr0080);
         }
         addr0084:
         return _loc1_;
      }
      
      private function _GridItemGoodSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "priceLabel";
            if(!_loc2_)
            {
               _loc1_.bottom = 9;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.right = 15;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005b:
                     _loc1_.text = "00.000.000";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "itemLabel";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00aa:
                                    this.itemLabel = _loc1_;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                                    }
                                 }
                                 §§goto(addr00c9);
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr008d);
            }
            §§goto(addr005b);
         }
         addr00c9:
         return _loc1_;
      }
      
      private function _GridItemGoodSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_storagePopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  addr0056:
                  _loc1_.top = 6;
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "ressource_cardboard1_small";
                     if(_loc2_)
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0076);
               }
               addr006b:
               _loc1_.id = "backgroundPrint";
               if(_loc2_)
               {
                  addr0076:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr008f);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00a0);
               }
               addr008f:
               _loc1_.document = this;
               if(_loc2_ || _loc3_)
               {
                  addr00a0:
                  this.backgroundPrint = _loc1_;
                  if(!_loc3_)
                  {
                     addr00aa:
                     BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0056);
         }
         §§goto(addr0076);
      }
      
      private function _GridItemGoodSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.verticalCenter = -12;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0046);
               }
               §§goto(addr0069);
            }
            addr0046:
            _loc1_.id = "image";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0069:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0072);
                     }
                  }
                  §§goto(addr007c);
               }
               addr0072:
               this.image = _loc1_;
               if(!_loc3_)
               {
                  addr007c:
                  BindingManager.executeBindings(this,"image",this.image);
               }
               §§goto(addr0089);
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _GridItemGoodSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.bottom = 43;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.right = 15;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "infoIcon";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008a:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00a8:
                                    this.infoIcon = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00ba:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr00ba);
                              }
                              addr00c7:
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr00a8);
            }
            §§goto(addr008a);
         }
         §§goto(addr00ba);
      }
      
      private function _GridItemGoodSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.top = 0;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  addr003f:
                  if(_loc3_)
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0077:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr007b);
                     }
                  }
                  §§goto(addr0077);
               }
               addr007b:
               return _loc1_;
            }
            §§goto(addr0077);
         }
         §§goto(addr003f);
      }
      
      public function ___GridItemGoodSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1299216927backgroundPrint = param1;
                  if(_loc4_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr0053);
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._292147534costGroup = param1;
                  addr0049:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
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
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100313435image;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._100313435image = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr007f);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._177606215infoIcon = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0040);
                  }
                  §§goto(addr004f);
               }
               addr0040:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr004f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                  }
               }
               §§goto(addr005e);
            }
         }
         addr005e:
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2135689121itemLabel = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0068);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

