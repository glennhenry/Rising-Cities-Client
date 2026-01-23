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
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import spark.skins.SparkSkin;
   
   public class NeedSkinNormal extends SparkSkin implements IStateClient2
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:NeedItemComponent;
      
      public function NeedSkinNormal()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               addr0026:
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._NeedSkinNormal_BriskImageDynaLib1_c(),this._NeedSkinNormal_BriskImageDynaLib2_c(),this._NeedSkinNormal_BriskImageDynaLib3_i(),this._NeedSkinNormal_BriskImageDynaLib4_c()];
                  addr0038:
                  if(!(_loc1_ && _loc1_))
                  {
                     this.currentState = "normal";
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0080:
                        this.addEventListener("creationComplete",this.___NeedSkinNormal_SparkSkin1_creationComplete);
                        if(_loc2_ || _loc2_)
                        {
                           addr00a3:
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           })];
                        }
                     }
                     return;
                  }
                  §§goto(addr0080);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0038);
         }
         §§goto(addr0026);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004f:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr004f);
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
         if(!_loc2_)
         {
            this.setIconData();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               addr0032:
               this.setIconData();
               if(!_loc1_)
               {
                  this.icon.addEventListener(BriskImageDynaLibEvent.LOAD_COMPLETE,this.onLoadComplete);
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      private function setIconData() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ResidentialNeedVo = null;
         var _loc2_:ProductionNeedVo = null;
         if(!_loc4_)
         {
            §§push(this.hostComponent);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop().data is ResidentialNeedVo);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(this.hostComponent);
                        if(!_loc4_)
                        {
                           addr0051:
                           _loc1_ = §§pop().data as ResidentialNeedVo;
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              if(_loc1_ != null)
                              {
                                 if(!_loc4_)
                                 {
                                    addr0075:
                                    §§push(this.icon);
                                    if(!_loc4_)
                                    {
                                       §§pop().dynaLibName = _loc1_.assetLibName;
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr00a3:
                                          this.icon.dynaBmpSourceName = _loc1_.assetImageName;
                                          addr009f:
                                       }
                                       §§goto(addr0155);
                                    }
                                    §§goto(addr00a3);
                                 }
                                 §§goto(addr009f);
                              }
                              §§goto(addr0155);
                           }
                           §§goto(addr0075);
                        }
                        else
                        {
                           addr00b6:
                           addr00bc:
                           if(§§pop().data is ProductionNeedVo)
                           {
                              addr00c3:
                              _loc2_ = this.hostComponent.data as ProductionNeedVo;
                              addr00c0:
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 if(_loc2_ != null)
                                 {
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       addr00ee:
                                       §§push(this.icon);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc2_.assetSWFName);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§pop().dynaSWFFileName = §§pop();
                                             if(_loc3_ || Boolean(_loc2_))
                                             {
                                                §§push(this.icon);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc2_.assetLibName);
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().dynaLibName = §§pop();
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr0153:
                                                         this.icon.dynaBmpSourceName = _loc2_.assetImageName;
                                                         addr014f:
                                                      }
                                                      §§goto(addr0155);
                                                   }
                                                   §§goto(addr0153);
                                                }
                                                §§goto(addr014f);
                                             }
                                             §§goto(addr0155);
                                          }
                                          §§goto(addr0153);
                                       }
                                       §§goto(addr014f);
                                    }
                                 }
                                 §§goto(addr0155);
                              }
                              §§goto(addr00ee);
                           }
                        }
                        addr0155:
                        return;
                     }
                     §§goto(addr00c0);
                  }
                  else
                  {
                     §§push(this.hostComponent);
                     if(!_loc4_)
                     {
                        §§goto(addr00b6);
                     }
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00bc);
            }
            §§goto(addr0051);
         }
         §§goto(addr00c0);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.icon.invalidateDisplayList();
         }
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "needframe_open";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     addr0070:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        §§goto(addr007a);
                     }
                  }
                  §§goto(addr0086);
               }
            }
            §§goto(addr0070);
         }
         addr007a:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0086:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "needframe_bg_grey";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.horizontalCenter = 0;
                     §§goto(addr0053);
                  }
                  §§goto(addr0072);
               }
               addr0053:
               if(_loc2_ || _loc2_)
               {
                  addr0072:
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
         }
         §§goto(addr0072);
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.maxWidth = 60;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.maxHeight = 52;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.smoothing = true;
                        if(_loc3_)
                        {
                           _loc1_.maintainAspectRation = true;
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.id = "icon";
                              if(_loc3_)
                              {
                                 addr0093:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00b2:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00bb:
                                          this.icon = _loc1_;
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00cd:
                                             BindingManager.executeBindings(this,"icon",this.icon);
                                          }
                                          §§goto(addr00da);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr00da);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00cd);
                        }
                     }
                  }
               }
               addr00da:
               return _loc1_;
            }
            §§goto(addr0093);
         }
         §§goto(addr00cd);
      }
      
      private function _NeedSkinNormal_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0067);
         }
         addr0035:
         _loc1_.dynaBmpSourceName = "checkmark_gray";
         if(_loc2_ || Boolean(this))
         {
            _loc1_.top = -3;
            if(!_loc3_)
            {
               _loc1_.right = -8;
               if(_loc2_)
               {
                  §§goto(addr0067);
               }
               §§goto(addr0073);
            }
            addr0067:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0073:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0077);
         }
         addr0077:
         return _loc1_;
      }
      
      public function ___NeedSkinNormal_SparkSkin1_creationComplete(param1:FlexEvent) : void
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._3226745icon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0062);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0058);
      }
   }
}

