package net.bigpoint.cityrama.view.miniLayer.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class FatalErrorMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FatalErrorMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               addr0025:
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.width = 540;
                  if(!_loc2_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0083);
               }
               addr0054:
               this.height = 313;
               if(!(_loc2_ && _loc2_))
               {
                  this.showAttentionSign = true;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0083:
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FatalErrorMiniLayer_Array1_c);
                  }
               }
               §§goto(addr0093);
            }
            addr0093:
            return;
         }
         §§goto(addr0025);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr003a);
            }
            §§goto(addr0056);
         }
         addr003a:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               return;
            }
         }
         else
         {
            addr0056:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.commitProperties();
            if(_loc2_)
            {
               this.title = ResourceManager.getInstance().getString(String("rcl.errors"),String("rcl.errors.fatal.title"));
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0069:
                  this.flavourText.text = ResourceManager.getInstance().getString(String("rcl.errors"),String("rcl.errors.fatal.text"));
               }
               return;
            }
         }
         §§goto(addr0069);
      }
      
      private function _FatalErrorMiniLayer_Array1_c() : Array
      {
         return [this._FatalErrorMiniLayer_VGroup1_i()];
      }
      
      private function _FatalErrorMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 2;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.paddingTop = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc2_)
                        {
                           _loc1_.verticalAlign = "middle";
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.percentWidth = 100;
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.percentHeight = 100;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00af:
                                    _loc1_.mxmlContent = [this._FatalErrorMiniLayer_HGroup1_c()];
                                    if(!_loc3_)
                                    {
                                       addr00bf:
                                       _loc1_.id = "mainGroup";
                                       if(!_loc3_)
                                       {
                                          addr00ca:
                                          if(!_loc1_.document)
                                          {
                                             if(_loc2_)
                                             {
                                                addr00d6:
                                                _loc1_.document = this;
                                                if(_loc2_ || Boolean(_loc1_))
                                                {
                                                   addr00f4:
                                                   this.mainGroup = _loc1_;
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      addr0106:
                                                      BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                                   }
                                                }
                                             }
                                             return _loc1_;
                                          }
                                          §§goto(addr00f4);
                                       }
                                    }
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr00bf);
                           }
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr0106);
               }
               §§goto(addr00ca);
            }
            §§goto(addr00d6);
         }
         §§goto(addr00af);
      }
      
      private function _FatalErrorMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0049);
         }
         addr002b:
         _loc1_.percentHeight = 100;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._FatalErrorMiniLayer_Group1_c(),this._FatalErrorMiniLayer_Group2_c()];
            addr0049:
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0089:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008d);
            }
            §§goto(addr0089);
         }
         addr008d:
         return _loc1_;
      }
      
      private function _FatalErrorMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0045:
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr004f:
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._FatalErrorMiniLayer_BriskImageDynaLib1_c()];
                        if(_loc3_ || _loc2_)
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr009d:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr009d);
            }
            §§goto(addr004f);
         }
         §§goto(addr0045);
      }
      
      private function _FatalErrorMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "big_bug";
            if(!_loc3_)
            {
               addr0040:
               _loc1_.dynaLibName = "gui_popups_miniLayer";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.horizontalCenter = 0;
                  addr0053:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc3_)
                     {
                        addr007a:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007a);
            }
            §§goto(addr0053);
         }
         §§goto(addr0040);
      }
      
      private function _FatalErrorMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.right = 90;
            if(!_loc3_)
            {
               addr004a:
               _loc1_.mxmlContent = [this._FatalErrorMiniLayer_BriskImageDynaLib2_c(),this._FatalErrorMiniLayer_BriskMCDynaLib1_c(),this._FatalErrorMiniLayer_BriskImageDynaLib3_c(),this._FatalErrorMiniLayer_LocaLabel1_i()];
               if(_loc2_)
               {
                  §§goto(addr006c);
               }
               §§goto(addr0078);
            }
            addr006c:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0078:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _FatalErrorMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quadrille_paper_small";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc2_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr006c);
      }
      
      private function _FatalErrorMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.top = -10;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr007b);
               }
               addr006f:
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc3_)
               {
                  addr007b:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _FatalErrorMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_infield_gui_infolayer";
               if(!_loc3_)
               {
                  _loc1_.left = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.top = -5;
                     addr0056:
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0056);
            }
         }
         §§goto(addr0087);
      }
      
      private function _FatalErrorMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.maxWidth = 200;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0055:
                     _loc1_.maxHeight = 200;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.styleName = "miniLayerFlavourText";
                        if(_loc2_ || Boolean(this))
                        {
                           addr0088:
                           _loc1_.setStyle("textAlign","center");
                           if(_loc2_)
                           {
                              _loc1_.id = "flavourText";
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a9:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§goto(addr00d1);
                                       }
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr00d1);
                              }
                           }
                           §§goto(addr00db);
                        }
                        addr00d1:
                        this.flavourText = _loc1_;
                        if(!_loc3_)
                        {
                           addr00db:
                           BindingManager.executeBindings(this,"flavourText",this.flavourText);
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr00db);
            }
            §§goto(addr0055);
         }
         §§goto(addr0088);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._800887486flavourText = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._273241018mainGroup = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr0055);
      }
   }
}

