package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class BoosterpackRewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const PUSH_EMITTER_FOR_REWARD_ITEM:String = "PUSH_EMITTER_FOR_REWARD_ITEM";
      
      public static const PUSH_EMITTER_FOR_FACTOR:String = "PUSH_EMITTER_FOR_FACTOR";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         PUSH_EMITTER_FOR_REWARD_ITEM = "PUSH_EMITTER_FOR_REWARD_ITEM";
         if(_loc1_ || BoosterpackRewardItemRenderer)
         {
            PUSH_EMITTER_FOR_FACTOR = "PUSH_EMITTER_FOR_FACTOR";
         }
      }
      
      private var _3059471comp:RewardItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:RewardItemComponentVo;
      
      public function BoosterpackRewardItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.autoDrawBackground = false;
                  if(_loc1_ || _loc2_)
                  {
                     this.mxmlContent = [this._BoosterpackRewardItemRenderer_Group1_c()];
                     if(!(_loc2_ && _loc1_))
                     {
                        this.currentState = "normal";
                        if(!_loc2_)
                        {
                           this.addEventListener("creationComplete",this.___BoosterpackRewardItemRenderer_ItemRenderer1_creationComplete);
                           if(!_loc2_)
                           {
                              addr0090:
                              this.addEventListener("rollOver",this.___BoosterpackRewardItemRenderer_ItemRenderer1_rollOver);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a9:
                                 this.addEventListener("rollOut",this.___BoosterpackRewardItemRenderer_ItemRenderer1_rollOut);
                                 if(!(_loc2_ && Boolean(this)))
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
                                    addr00c2:
                                 }
                              }
                              §§goto(addr0105);
                           }
                           §§goto(addr00c2);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00c2);
                  }
                  addr0105:
                  return;
               }
               §§goto(addr0090);
            }
         }
         §§goto(addr00c2);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr0063);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0063:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.data = param1;
            if(_loc2_ || _loc3_)
            {
               this._compdata = param1 as RewardItemComponentVo;
               if(!_loc3_)
               {
                  this._dataDirty = true;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0069:
                     invalidateProperties();
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0069);
            }
         }
         addr006e:
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
               §§goto(addr0032);
            }
            §§goto(addr0051);
         }
         addr0032:
         if(this._dataDirty)
         {
            if(_loc2_ || _loc1_)
            {
               this._dataDirty = false;
               if(!_loc1_)
               {
                  addr0051:
                  this.comp.data = this._compdata;
               }
               §§goto(addr005b);
            }
            §§goto(addr0051);
         }
         addr005b:
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(this._compdata);
            if(!_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     addr003d:
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0074);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0073);
                     }
                  }
                  addr0074:
                  §§goto(addr006b);
               }
               §§goto(addr003d);
            }
            addr006b:
            §§goto(addr0067);
         }
         addr0067:
         §§push(this._compdata.showCreationAnimation);
         if(!_loc2_)
         {
            addr0073:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(!_loc2_)
            {
               dispatchEvent(new Event(PUSH_EMITTER_FOR_REWARD_ITEM,true));
               if(!_loc2_)
               {
                  addr009d:
                  TweenMax.from(this.comp,0.8,{
                     "delay":0.1,
                     "scaleX":0.2,
                     "scaleY":0.2,
                     "ease":Bounce.easeOut,
                     "onComplete":this.handleCompleteAnim
                  });
               }
            }
         }
      }
      
      private function handleCompleteAnim() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._compdata);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this._compdata);
                     if(!_loc1_)
                     {
                        §§push(§§pop().showCreationAnimation);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(_loc2_ || _loc2_)
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              if(_temp_6)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr007d);
                                 }
                              }
                           }
                           §§goto(addr008d);
                        }
                        addr007d:
                        §§pop();
                        if(_loc2_)
                        {
                           addr008d:
                           addr0087:
                           if(this._compdata.bonusFactor > 1)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr009e:
                                 dispatchEvent(new Event(PUSH_EMITTER_FOR_FACTOR,true));
                              }
                           }
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr0087);
                  }
               }
               addr00ac:
               return;
            }
            §§goto(addr0087);
         }
         §§goto(addr009e);
      }
      
      public function get rewardOrderId() : uint
      {
         return this._compdata.orderId;
      }
      
      public function get bonusFactor() : uint
      {
         return this._compdata.bonusFactor;
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this._compdata.type,this._compdata.configId));
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
         }
      }
      
      private function _BoosterpackRewardItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 112;
            if(_loc3_)
            {
               §§goto(addr0037);
            }
            §§goto(addr005e);
         }
         addr0037:
         _loc1_.height = 160;
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._BoosterpackRewardItemRenderer_RewardItemComponent1_i()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr005e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0062);
            }
            §§goto(addr005e);
         }
         addr0062:
         return _loc1_;
      }
      
      private function _BoosterpackRewardItemRenderer_RewardItemComponent1_i() : RewardItemComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && _loc2_))
            {
               addr0040:
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.id = "comp";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006c:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr007d:
                              this.comp = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"comp",this.comp);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr006c);
         }
         §§goto(addr0040);
      }
      
      public function ___BoosterpackRewardItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      public function ___BoosterpackRewardItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function ___BoosterpackRewardItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3059471comp;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._3059471comp = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comp",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
         }
         addr0083:
      }
   }
}

