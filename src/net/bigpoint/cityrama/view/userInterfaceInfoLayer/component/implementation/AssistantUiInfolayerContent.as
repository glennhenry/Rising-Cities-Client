package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AssistantUiInfolayerContentVo;
   import spark.components.VGroup;
   
   public class AssistantUiInfolayerContent extends AbstractUIInfolayerComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         _skinParts = {
            "backgroundGroup":true,
            "topInformation":true,
            "header":true,
            "headerIcon":true,
            "contentGroup":false
         };
      }
      
      private var _178889435infotext:LocaLabel;
      
      private var _500208440timerComponent:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:AssistantUiInfolayerContentVo;
      
      public function AssistantUiInfolayerContent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  addr005c:
                  this.maxWidth = 230;
                  if(_loc2_)
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr007b);
               }
               addr0068:
               this.width = 230;
               if(!(_loc1_ && Boolean(this)))
               {
                  addr007b:
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._AssistantUiInfolayerContent_Array1_c);
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr005c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0043:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 is AbstractUIInfolayerContentVo)
            {
               if(!_loc3_)
               {
                  this._implementationData = param1 as AssistantUiInfolayerContentVo;
                  if(!_loc3_)
                  {
                     addr0042:
                     super.data = param1;
                     if(_loc2_)
                     {
                     }
                  }
               }
               return;
            }
            throw new ArgumentError("Wrong Vo for this component use AssistantUiInfolayerContentVo " + this);
         }
         §§goto(addr0042);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Boolean(this._implementationData));
            if(_loc2_ || _loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr0039:
                     §§pop();
                     if(!_loc3_)
                     {
                        addr0043:
                        if(_dirty)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              this.infotext.text = this._implementationData.infoText;
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.timerComponent.data = this._implementationData.runtimeVo;
                                 addr0078:
                                 if(!_loc3_)
                                 {
                                    addr0097:
                                    headerIcon.includeInLayout = headerIcon.visible = false;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00b4:
                                       super.commitProperties();
                                    }
                                    §§goto(addr00b9);
                                 }
                                 §§goto(addr00b4);
                              }
                              addr00b9:
                              return;
                           }
                           §§goto(addr0078);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr0097);
                  }
               }
               §§goto(addr0043);
            }
            §§goto(addr0039);
         }
         §§goto(addr0097);
      }
      
      private function _AssistantUiInfolayerContent_Array1_c() : Array
      {
         return [this._AssistantUiInfolayerContent_VGroup1_c()];
      }
      
      private function _AssistantUiInfolayerContent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.paddingLeft = 6;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.paddingRight = 6;
                     if(!_loc3_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc2_ || _loc3_)
                        {
                           addr0080:
                           _loc1_.gap = 6;
                           if(!_loc3_)
                           {
                              _loc1_.mxmlContent = [this._AssistantUiInfolayerContent_LocaLabel1_i(),this._AssistantUiInfolayerContent_BriskImageDynaLib1_c(),this._AssistantUiInfolayerContent_TimerBarComponent1_i()];
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00b9:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00c5:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00b9);
                        }
                     }
                     §§goto(addr00c5);
                  }
                  addr00c9:
                  return _loc1_;
               }
               §§goto(addr00b9);
            }
            §§goto(addr0080);
         }
         §§goto(addr00c5);
      }
      
      private function _AssistantUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "infoLabel";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 90;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  addr0045:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0062:
                     _loc1_.id = "infotext";
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0075);
                     }
                  }
                  §§goto(addr00a9);
               }
               addr0075:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr009f);
                     }
                  }
                  §§goto(addr00a9);
               }
               addr009f:
               this.infotext = _loc1_;
               if(_loc2_)
               {
                  addr00a9:
                  BindingManager.executeBindings(this,"infotext",this.infotext);
               }
               return _loc1_;
            }
            §§goto(addr0045);
         }
         §§goto(addr0062);
      }
      
      private function _AssistantUiInfolayerContent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 90;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0084:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0088);
            }
            §§goto(addr0084);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _AssistantUiInfolayerContent_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc2_)
         {
            _loc1_.showBoostButton = false;
            if(_loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr008c);
         }
         addr002d:
         _loc1_.activeTimer = false;
         if(!_loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_)
            {
               §§goto(addr004d);
            }
            §§goto(addr008c);
         }
         addr004d:
         _loc1_.id = "timerComponent";
         if(_loc2_ || _loc3_)
         {
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr0082:
                     this.timerComponent = _loc1_;
                     if(_loc2_)
                     {
                        addr008c:
                        BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
                     }
                  }
                  §§goto(addr0099);
               }
            }
            §§goto(addr0082);
         }
         addr0099:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get infotext() : LocaLabel
      {
         return this._178889435infotext;
      }
      
      public function set infotext(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._178889435infotext;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._178889435infotext = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0072);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infotext",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerComponent() : TimerBarComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._500208440timerComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._500208440timerComponent = param1;
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0071);
            }
            addr0071:
            return;
         }
         §§goto(addr0052);
      }
   }
}

