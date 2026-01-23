package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class EvoucherFailureMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1641788370okButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function EvoucherFailureMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  addr0041:
                  this.width = 540;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.height = 313;
                     if(_loc1_ || Boolean(this))
                     {
                        this.showAttentionSign = true;
                        if(!(_loc2_ && _loc1_))
                        {
                           addr0083:
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EvoucherFailureMiniLayer_Array1_c);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0083);
                  }
               }
            }
            addr0093:
            return;
         }
         §§goto(addr0041);
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
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0045);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0045:
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.evoucherfailed"),String("rcl.miniLayer.evoucherfailed.title.capital"));
               if(!(_loc2_ && _loc1_))
               {
                  addr0060:
                  this.okButton.label = ResourceManager.getInstance().getString(String("rcl.miniLayer.evoucherfailed"),String("rcl.miniLayer.evoucherfailed.button.ok.capital"));
               }
            }
            return;
         }
         §§goto(addr0060);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.flavourText.text = param1.message;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr003b);
            }
            §§goto(addr004c);
         }
         addr003b:
         this.invalidateProperties();
         if(_loc2_ || Boolean(param1))
         {
            addr004c:
            this.invalidateDisplayList();
         }
      }
      
      private function _EvoucherFailureMiniLayer_Array1_c() : Array
      {
         return [this._EvoucherFailureMiniLayer_VGroup1_i()];
      }
      
      private function _EvoucherFailureMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 2;
            if(_loc2_)
            {
               _loc1_.paddingTop = -40;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc2_)
                     {
                        §§goto(addr0053);
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr0065);
               }
            }
            addr0053:
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               addr0065:
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._EvoucherFailureMiniLayer_Group1_c(),this._EvoucherFailureMiniLayer_LocaLabel1_i(),this._EvoucherFailureMiniLayer_BriskImageDynaLib1_i(),this._EvoucherFailureMiniLayer_Group2_c(),this._EvoucherFailureMiniLayer_MultistateButton1_i()];
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "mainGroup";
                     if(!_loc3_)
                     {
                        addr00bf:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr00de);
                           }
                           §§goto(addr00f1);
                        }
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr00bf);
               }
            }
            addr00de:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr00e7:
               this.mainGroup = _loc1_;
               if(_loc2_)
               {
                  addr00f1:
                  BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
               }
            }
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      private function _EvoucherFailureMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 44;
            if(_loc2_)
            {
               §§goto(addr003f);
            }
            §§goto(addr004b);
         }
         addr003f:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr004b:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EvoucherFailureMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.height = 66;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 90;
               if(!_loc2_)
               {
                  addr0044:
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0076);
               }
            }
            addr0063:
            _loc1_.id = "flavourText";
            if(!(_loc2_ && Boolean(this)))
            {
               addr0076:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr00a1);
                     }
                  }
                  §§goto(addr00b3);
               }
               addr00a1:
               this.flavourText = _loc1_;
               if(_loc3_ || _loc3_)
               {
                  addr00b3:
                  BindingManager.executeBindings(this,"flavourText",this.flavourText);
               }
               §§goto(addr00c0);
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _EvoucherFailureMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "head_line_long";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "line";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006c:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr009b);
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr006c);
            }
            addr0089:
            this.line = _loc1_;
            if(!(_loc3_ && _loc2_))
            {
               addr009b:
               BindingManager.executeBindings(this,"line",this.line);
            }
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      private function _EvoucherFailureMiniLayer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 28;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr003e:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _EvoucherFailureMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 204;
            if(_loc3_ || _loc2_)
            {
               _loc1_.libNameLeft = "gui_popups_miniLayer";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "okButton";
                  if(_loc3_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0086);
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0065);
            }
            §§goto(addr008f);
         }
         addr0086:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr008f:
            this.okButton = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               BindingManager.executeBindings(this,"okButton",this.okButton);
            }
         }
         return _loc1_;
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0079);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
            addr0088:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3321844line;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._3321844line = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0067);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._273241018mainGroup = param1;
                  if(!_loc4_)
                  {
                     addr0050:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1641788370okButton;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1641788370okButton = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006a);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
   }
}

