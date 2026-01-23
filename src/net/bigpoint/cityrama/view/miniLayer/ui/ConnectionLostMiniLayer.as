package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class ConnectionLostMiniLayer extends MiniLayerWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
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
      
      public function ConnectionLostMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  this.width = 540;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0071);
            }
            addr0054:
            this.height = 313;
            if(_loc1_ || _loc1_)
            {
               addr0071:
               this.showAttentionSign = true;
               if(_loc1_)
               {
                  addr007b:
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConnectionLostMiniLayer_Array1_c);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0098:
                     this.addEventListener("creationComplete",this.___ConnectionLostMiniLayer_MiniLayerWindow1_creationComplete);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0098);
            }
            addr00a4:
            return;
         }
         §§goto(addr0071);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               addr0034:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0034);
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
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            title = LocaUtils.getString("rcl.miniLayer.connectionlost","rcl.miniLayer.connectionlost.title");
            if(_loc2_ || _loc1_)
            {
               this.flavourText.text = LocaUtils.getString("rcl.miniLayer.connectionlost","rcl.miniLayer.connectionlost.flavour");
            }
         }
      }
      
      private function _ConnectionLostMiniLayer_Array1_c() : Array
      {
         return [this._ConnectionLostMiniLayer_VGroup1_i()];
      }
      
      private function _ConnectionLostMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 2;
            if(_loc2_ || _loc3_)
            {
               _loc1_.paddingTop = -40;
               if(!_loc3_)
               {
                  addr003b:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc3_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc2_)
                        {
                           addr006c:
                           _loc1_.verticalAlign = "middle";
                           if(!_loc3_)
                           {
                              _loc1_.mxmlContent = [this._ConnectionLostMiniLayer_Group1_c(),this._ConnectionLostMiniLayer_LocaLabel1_i(),this._ConnectionLostMiniLayer_BriskImageDynaLib1_c()];
                              if(!_loc3_)
                              {
                                 _loc1_.id = "mainGroup";
                                 if(!_loc3_)
                                 {
                                    addr009e:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§goto(addr00be);
                                       }
                                       §§goto(addr00d9);
                                    }
                                    §§goto(addr00cf);
                                 }
                                 §§goto(addr00be);
                              }
                           }
                           §§goto(addr00cf);
                        }
                        addr00be:
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00cf:
                           this.mainGroup = _loc1_;
                           if(_loc2_)
                           {
                              addr00d9:
                              BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr00d9);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr009e);
            }
         }
         §§goto(addr003b);
      }
      
      private function _ConnectionLostMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 44;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr004a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004e);
            }
            §§goto(addr004a);
         }
         addr004e:
         return _loc1_;
      }
      
      private function _ConnectionLostMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.maxWidth = 360;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.maxHeight = 130;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc3_)
                  {
                     _loc1_.setStyle("textAlign","center");
                     if(!_loc2_)
                     {
                        addr0074:
                        _loc1_.id = "flavourText";
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr009b:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00b7);
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           addr00b7:
                           this.flavourText = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00c9:
                              BindingManager.executeBindings(this,"flavourText",this.flavourText);
                           }
                           §§goto(addr00d6);
                        }
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr00c9);
            }
            addr00d6:
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      private function _ConnectionLostMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               addr003e:
               _loc1_.dynaBmpSourceName = "connection_lost_polaroid";
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0071);
                     }
                  }
                  §§goto(addr007d);
               }
            }
            addr0071:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr007d:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      public function ___ConnectionLostMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._800887486flavourText = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._273241018mainGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006a);
      }
   }
}

