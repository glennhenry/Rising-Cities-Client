package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class GridItemLockedSkin extends SparkSkin implements IStateClient2
   {
      
      private var _292147534costGroup:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _238669838lvlLabel:LocaLabel;
      
      private var _1177829717stickyTape:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemLockedSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.width = 120;
                  if(_loc2_)
                  {
                     addr004a:
                     this.height = 150;
                     if(!_loc1_)
                     {
                        this.mxmlContent = [this._GridItemLockedSkin_Group1_c()];
                        if(_loc2_)
                        {
                           addr0065:
                           this.currentState = "up";
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr0083);
                           }
                           §§goto(addr009c);
                        }
                     }
                     addr0083:
                     this.addEventListener("creationComplete",this.___GridItemLockedSkin_SparkSkin1_creationComplete);
                     if(_loc2_ || Boolean(this))
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
                     §§goto(addr011a);
                  }
                  §§goto(addr0065);
               }
            }
            addr011a:
            return;
         }
         §§goto(addr004a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               else
               {
                  addr0052:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            TweenMax.to(this.infoIcon,0,{"glowFilter":{
               "color":12565651,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
            if(!_loc3_)
            {
               TweenMax.to(this.image,0,{
                  "colorMatrixFilter":{"saturation":0},
                  "colorTransform":{
                     "tint":14473659,
                     "tintAmount":0.74
                  }
               });
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
               this.lvlLabel.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.level"));
               if(!(_loc2_ && _loc2_))
               {
                  if(this.costGroup)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this.hostComponent);
                        if(_loc1_)
                        {
                           §§push(§§pop().showPrice);
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr0083:
                                    this.costGroup.includeInLayout = true;
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr0097);
                                    }
                                    §§goto(addr0172);
                                 }
                                 addr0097:
                                 this.costGroup.visible = true;
                                 if(_loc1_)
                                 {
                                    addr00d1:
                                    §§push(this.infoIcon);
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             addr00f1:
                                             addr00ee:
                                             if(this.hostComponent.showInfoIcon)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(this.infoIcon);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(true);
                                                      if(_loc1_)
                                                      {
                                                         §§pop().includeInLayout = §§pop();
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            addr0120:
                                                            §§push(this.infoIcon);
                                                            if(_loc1_)
                                                            {
                                                               §§goto(addr0129);
                                                            }
                                                            else
                                                            {
                                                               addr0155:
                                                               §§push(false);
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr0163);
                                                               }
                                                            }
                                                            §§goto(addr0177);
                                                         }
                                                         §§goto(addr0172);
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                   addr0129:
                                                   §§push(true);
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      addr0137:
                                                      §§pop().visible = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         addr0177:
                                                         this.infoIcon.visible = false;
                                                         addr0172:
                                                         addr0176:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0163:
                                                      §§pop().includeInLayout = §§pop();
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         §§goto(addr0172);
                                                      }
                                                   }
                                                   §§goto(addr0179);
                                                }
                                                §§goto(addr0172);
                                             }
                                             else
                                             {
                                                §§push(this.infoIcon);
                                                if(_loc1_)
                                                {
                                                   §§goto(addr0155);
                                                }
                                             }
                                             §§goto(addr0176);
                                          }
                                          §§goto(addr0172);
                                       }
                                       §§goto(addr0179);
                                    }
                                    §§goto(addr0155);
                                 }
                                 §§goto(addr0179);
                              }
                              else
                              {
                                 this.costGroup.includeInLayout = false;
                                 if(_loc1_)
                                 {
                                    addr00bd:
                                    this.costGroup.visible = false;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§goto(addr00d1);
                                    }
                                 }
                              }
                              §§goto(addr0120);
                           }
                           §§goto(addr00f1);
                        }
                        §§goto(addr00ee);
                     }
                     §§goto(addr00d1);
                  }
                  addr0179:
                  return;
               }
               §§goto(addr00bd);
            }
            §§goto(addr0083);
         }
         §§goto(addr00bd);
      }
      
      private function _GridItemLockedSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._GridItemLockedSkin_Group2_i(),this._GridItemLockedSkin_BriskImageDynaLib2_c(),this._GridItemLockedSkin_BriskImageDynaLib3_i(),this._GridItemLockedSkin_BriskImageDynaLib4_i(),this._GridItemLockedSkin_BriskImageDynaLib5_c(),this._GridItemLockedSkin_BriskMCDynaLib1_i()];
                  addr0059:
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00ae:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00ae);
               }
            }
            addr00b2:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _GridItemLockedSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.bottom = 2;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._GridItemLockedSkin_BriskImageDynaLib1_c(),this._GridItemLockedSkin_HGroup1_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "costGroup";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr0093:
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a4:
                                 this.costGroup = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00ae:
                                    BindingManager.executeBindings(this,"costGroup",this.costGroup);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00a4);
               }
               addr00bb:
               return _loc1_;
            }
            §§goto(addr0072);
         }
         §§goto(addr0093);
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               §§goto(addr0043);
            }
            §§goto(addr0077);
         }
         addr0043:
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaBmpSourceName = "architect_postit_price";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0077:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.paddingTop = 4;
                  if(_loc3_)
                  {
                     addr0053:
                     _loc1_.percentWidth = 100;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.percentHeight = 100;
                        if(_loc3_)
                        {
                           addr007b:
                           _loc1_.mxmlContent = [this._GridItemLockedSkin_LocaLabel1_i(),this._GridItemLockedSkin_LocaLabel2_i()];
                           if(!_loc2_)
                           {
                              §§goto(addr0091);
                           }
                           §§goto(addr00a5);
                        }
                        addr0091:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr00a5:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0053);
            }
         }
         addr00a9:
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "priceLabel";
            if(_loc3_)
            {
               _loc1_.text = "dev: LVL";
               if(!_loc2_)
               {
                  _loc1_.id = "lvlLabel";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0081:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr0092:
                              this.lvlLabel = _loc1_;
                              if(!_loc2_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"lvlLabel",this.lvlLabel);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        addr00a9:
                        return _loc1_;
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0092);
            }
            §§goto(addr009c);
         }
         §§goto(addr0081);
      }
      
      private function _GridItemLockedSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "levelLabel";
            if(_loc3_)
            {
               _loc1_.id = "itemLabel";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0072:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr0085);
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0072);
            }
            addr007b:
            this.itemLabel = _loc1_;
            if(!_loc2_)
            {
               addr0085:
               BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
            }
            §§goto(addr0092);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc3_))
            {
               addr0046:
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.top = 6;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006e:
                     _loc1_.dynaBmpSourceName = "architect_postit_blocked";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0082);
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr006e);
            }
            addr0082:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr008e:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalCenter = -12;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0057);
               }
               §§goto(addr009d);
            }
            addr0057:
            _loc1_.id = "image";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr008b:
                        this.image = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr009d:
                           BindingManager.executeBindings(this,"image",this.image);
                        }
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr008b);
            }
            §§goto(addr00aa);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.bottom = 43;
               if(_loc2_)
               {
                  _loc1_.right = 15;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                     if(_loc2_)
                     {
                        _loc1_.id = "infoIcon";
                        if(!_loc3_)
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr009c:
                                    this.infoIcon = _loc1_;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00ae:
                                       BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
                  §§goto(addr009c);
               }
            }
            §§goto(addr00ae);
         }
         §§goto(addr0079);
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalCenter = -12;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalCenter = -2;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0070:
                     _loc1_.dynaBmpSourceName = "architect_icon_blocked";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr008f);
                  }
                  addr0093:
                  return _loc1_;
               }
               §§goto(addr008f);
            }
            §§goto(addr0070);
         }
         §§goto(addr008f);
      }
      
      private function _GridItemLockedSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
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
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     addr003d:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "stickyTape";
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006f:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00a0:
                                    this.stickyTape = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00b2:
                                       BindingManager.executeBindings(this,"stickyTape",this.stickyTape);
                                    }
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr006f);
               }
            }
            §§goto(addr003d);
         }
         addr00bf:
         return _loc1_;
      }
      
      public function ___GridItemLockedSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._292147534costGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005e);
            }
         }
         addr007c:
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
               if(_loc4_)
               {
                  this._100313435image = param1;
                  if(_loc4_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0053);
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
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
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._177606215infoIcon = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006d);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0055);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2135689121itemLabel = param1;
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get lvlLabel() : LocaLabel
      {
         return this._238669838lvlLabel;
      }
      
      public function set lvlLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._238669838lvlLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._238669838lvlLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvlLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1177829717stickyTape = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006d);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stickyTape",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
         }
         addr007c:
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
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0057);
      }
   }
}

