package net.bigpoint.cityrama.view.common.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import spark.components.supportClasses.ItemRenderer;
   
   public class RewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3059471comp:RewardItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:RewardItemComponentVo;
      
      public function RewardItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.autoDrawBackground = false;
                  addr0037:
                  if(_loc1_)
                  {
                     addr004b:
                     this.mxmlContent = [this._RewardItemRenderer_RewardItemComponent1_i()];
                     if(_loc1_)
                     {
                        addr005b:
                        this.currentState = "normal";
                        if(_loc1_)
                        {
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"hovered",
                              "overrides":[]
                           }),new State({
                              "name":"selected",
                              "overrides":[]
                           })];
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr005b);
               }
               addr00aa:
               return;
            }
            §§goto(addr0037);
         }
         §§goto(addr004b);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0057);
                  }
               }
               else
               {
                  addr0065:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0065);
         }
         addr0057:
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
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.data = param1;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr0034);
            }
            §§goto(addr003e);
         }
         addr0034:
         this._dataDirty = true;
         if(!_loc3_)
         {
            addr003e:
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§goto(addr0031);
            }
            §§goto(addr003e);
         }
         addr0031:
         if(this._dataDirty)
         {
            if(_loc1_)
            {
               addr003e:
               this._dataDirty = false;
               if(_loc1_)
               {
                  addr0048:
                  this.comp.data = super.data as RewardItemComponentVo;
               }
               §§goto(addr0055);
            }
            §§goto(addr0048);
         }
         addr0055:
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,data.type,data.configId));
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
         }
      }
      
      private function _RewardItemRenderer_RewardItemComponent1_i() : RewardItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         if(!_loc3_)
         {
            _loc1_.addEventListener("rollOver",this.__comp_rollOver);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.addEventListener("rollOut",this.__comp_rollOut);
               if(_loc2_)
               {
                  _loc1_.id = "comp";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0084:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr008d:
                              this.comp = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 BindingManager.executeBindings(this,"comp",this.comp);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr008d);
                  }
               }
            }
         }
         §§goto(addr0084);
      }
      
      public function __comp_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function __comp_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.rollOutHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get comp() : RewardItemComponent
      {
         return this._3059471comp;
      }
      
      public function set comp(param1:RewardItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3059471comp;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._3059471comp = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comp",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
   }
}

