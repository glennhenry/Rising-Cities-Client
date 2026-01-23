package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import spark.skins.SparkSkin;
   
   public class NeedSkinActive extends SparkSkin implements IStateClient2
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:NeedItemComponent;
      
      public function NeedSkinActive()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  this.mxmlContent = [this._NeedSkinActive_BriskImageDynaLib1_c(),this._NeedSkinActive_BriskImageDynaLib2_c(),this._NeedSkinActive_BriskImageDynaLib3_i(),this._NeedSkinActive_BriskImageDynaLib4_c()];
                  if(_loc1_ || _loc2_)
                  {
                     this.currentState = "normal";
                     if(!_loc2_)
                     {
                        this.addEventListener("creationComplete",this.___NeedSkinActive_SparkSkin1_creationComplete);
                        if(_loc1_ || _loc1_)
                        {
                           addr00a2:
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           })];
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00a2);
            }
         }
         addr00ca:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr003d:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr003d);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
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
            this.setIconData();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               this.setIconData();
               if(!(_loc1_ && _loc2_))
               {
                  this.icon.addEventListener(BriskImageDynaLibEvent.LOAD_COMPLETE,this.onLoadComplete);
               }
            }
         }
      }
      
      private function setIconData() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ProductionNeedVo = null;
         var _loc2_:ProductionNeedVo = null;
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push(this.hostComponent);
            if(_loc3_)
            {
               §§push(§§pop().data is ProductionNeedVo);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(this.hostComponent);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0055:
                           _loc1_ = §§pop().data as ProductionNeedVo;
                           if(_loc3_)
                           {
                              if(_loc1_ != null)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(this.icon);
                                    if(!(_loc4_ && Boolean(_loc1_)))
                                    {
                                       §§push(_loc1_.assetLibName);
                                       if(_loc3_)
                                       {
                                          §§pop().dynaLibName = §§pop();
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§push(this.icon);
                                             if(_loc3_)
                                             {
                                                addr00ab:
                                                §§push(_loc1_.assetSWFName);
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                   §§pop().dynaSWFFileName = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      addr00d9:
                                                      this.icon.dynaBmpSourceName = _loc1_.assetImageName;
                                                      addr00d5:
                                                      addr00d1:
                                                   }
                                                   §§goto(addr018c);
                                                }
                                                §§goto(addr00d9);
                                             }
                                             §§goto(addr00d5);
                                          }
                                          §§goto(addr018c);
                                       }
                                       §§goto(addr00d9);
                                    }
                                    §§goto(addr00ab);
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr018c);
                           }
                           §§goto(addr00d1);
                        }
                        else
                        {
                           addr00ef:
                           addr00f5:
                           if(§§pop().data is ProductionNeedVo)
                           {
                              addr00fc:
                              _loc2_ = this.hostComponent.data as ProductionNeedVo;
                              addr00f9:
                              if(_loc3_ || Boolean(this))
                              {
                                 if(_loc2_ != null)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr0127:
                                       §§push(this.icon);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(_loc2_.assetSWFName);
                                          if(!_loc4_)
                                          {
                                             §§pop().dynaSWFFileName = §§pop();
                                             if(!_loc4_)
                                             {
                                                addr014c:
                                                §§push(this.icon);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(_loc2_.assetLibName);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr0173);
                                                   }
                                                   §§goto(addr018a);
                                                }
                                                §§goto(addr0186);
                                             }
                                             §§goto(addr0182);
                                          }
                                          addr0173:
                                          §§pop().dynaLibName = §§pop();
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                             addr018a:
                                             this.icon.dynaBmpSourceName = _loc2_.assetImageName;
                                             addr0186:
                                             addr0182:
                                          }
                                          §§goto(addr018c);
                                       }
                                       §§goto(addr0186);
                                    }
                                    §§goto(addr014c);
                                 }
                                 §§goto(addr018c);
                              }
                              §§goto(addr0127);
                           }
                        }
                        addr018c:
                        return;
                     }
                     §§goto(addr00f9);
                  }
                  else
                  {
                     §§push(this.hostComponent);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr00ef);
                     }
                  }
                  §§goto(addr00fc);
               }
               §§goto(addr00f5);
            }
            §§goto(addr0055);
         }
         §§goto(addr00f9);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.icon.invalidateDisplayList();
         }
      }
      
      private function _NeedSkinActive_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "needframe_open";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr0079);
                     }
                  }
               }
            }
            §§goto(addr008d);
         }
         addr0079:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr008d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _NeedSkinActive_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_green";
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  addr0048:
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
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
               §§goto(addr0081);
            }
            §§goto(addr0048);
         }
         addr0081:
         return _loc1_;
      }
      
      private function _NeedSkinActive_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.maxWidth = 60;
                  if(!_loc2_)
                  {
                     _loc1_.maxHeight = 52;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.smoothing = true;
                        if(!_loc2_)
                        {
                           addr0078:
                           _loc1_.maintainAspectRation = true;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008a:
                              _loc1_.id = "icon";
                              if(_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr00b6);
                                    }
                                    §§goto(addr00d1);
                                 }
                              }
                              §§goto(addr00bf);
                           }
                           addr00b6:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr00bf:
                              this.icon = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00d1:
                                 BindingManager.executeBindings(this,"icon",this.icon);
                              }
                           }
                           §§goto(addr00de);
                        }
                     }
                     addr00de:
                     return _loc1_;
                  }
                  §§goto(addr0078);
               }
               §§goto(addr00bf);
            }
         }
         §§goto(addr008a);
      }
      
      private function _NeedSkinActive_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               addr0041:
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = -3;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0088);
            }
            addr0072:
            _loc1_.right = -8;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      public function ___NeedSkinActive_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._3226745icon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : NeedItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:NeedItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
      }
   }
}

