package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Back;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.common.vo.RewardImprovementItemComponentVo;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreAnimationMediator;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.Events.ImprovementStoreItemRendererEvent;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ImprovementStoreRewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3059471comp:RewardItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:RewardImprovementItemComponentVo;
      
      private var _alphaAnim:TweenMax;
      
      private var _scaleAnim:TweenMax;
      
      private var color:uint = 16711935;
      
      public function ImprovementStoreRewardItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.autoDrawBackground = false;
                  if(!_loc1_)
                  {
                     addr003a:
                     this.mxmlContent = [this._ImprovementStoreRewardItemRenderer_HGroup1_c()];
                     if(!_loc1_)
                     {
                        this.currentState = "normal";
                        if(!_loc1_)
                        {
                           addr0060:
                           this.addEventListener("rollOver",this.___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOver);
                           if(!(_loc1_ && _loc1_))
                           {
                              addr0079:
                              this.addEventListener("rollOut",this.___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOut);
                              if(!_loc1_)
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
                        }
                        return;
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0079);
            }
            §§goto(addr003a);
         }
         §§goto(addr0079);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr005a);
                  }
               }
               §§goto(addr0068);
            }
            addr005a:
            return;
         }
         addr0068:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.data = param1;
            if(_loc3_)
            {
               this._compdata = param1 as RewardImprovementItemComponentVo;
               if(!_loc2_)
               {
                  this._dataDirty = true;
                  if(!_loc2_)
                  {
                     addr004f:
                     invalidateProperties();
                  }
               }
               return;
            }
         }
         §§goto(addr004f);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               §§push(this._dataDirty);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        this._dataDirty = false;
                        if(!_loc3_)
                        {
                           §§push(this.comp);
                           if(_loc2_)
                           {
                              §§push(this._compdata);
                              if(_loc2_)
                              {
                                 §§pop().data = §§pop();
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(this._compdata);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop().animationDelay);
                                       if(!_loc3_)
                                       {
                                          §§push(0);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr009a:
                                                   this.spawnItem(this._compdata.animationDelay);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   addr00f4:
                                                   §§push(this._compdata);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().animationDelay);
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§push(-2);
                                                         if(!_loc3_)
                                                         {
                                                            addr0114:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr0129:
                                                                  this.stopAlphaTween();
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     addr013c:
                                                                     this.stopScaleTween();
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        addr014f:
                                                                        §§push(this._compdata);
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              var _temp_9:* = §§pop();
                                                                              §§push(_temp_9);
                                                                              §§push(_temp_9);
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§goto(addr0180);
                                                                                       }
                                                                                       §§goto(addr0230);
                                                                                    }
                                                                                    §§goto(addr01b4);
                                                                                 }
                                                                                 §§goto(addr01a2);
                                                                              }
                                                                              §§goto(addr01a3);
                                                                           }
                                                                           §§goto(addr0193);
                                                                        }
                                                                        addr0180:
                                                                        addr0185:
                                                                        addr0183:
                                                                        addr017c:
                                                                        §§push(this._compdata.animationDelay == -3);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr0193:
                                                                           §§push(§§pop());
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              addr01a2:
                                                                              var _temp_12:* = §§pop();
                                                                              addr01a3:
                                                                              §§push(_temp_12);
                                                                              if(_temp_12)
                                                                              {
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr01b4:
                                                                                    §§pop();
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr01ba:
                                                                                       §§push(this.comp);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§goto(addr01c9);
                                                                                       }
                                                                                       §§goto(addr01eb);
                                                                                    }
                                                                                    §§goto(addr01da);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr01c9:
                                                                        addr01c3:
                                                                        if(§§pop().alpha == 0)
                                                                        {
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              addr01da:
                                                                              §§push(this.comp);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr01ef:
                                                                                 §§pop().data = this._compdata;
                                                                                 addr01eb:
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    addr01fe:
                                                                                    §§push(this.comp);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§pop().alpha = §§pop();
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             addr0242:
                                                                                             this.comp.scaleX = this.comp.scaleY = 1;
                                                                                             addr0234:
                                                                                             addr0230:
                                                                                          }
                                                                                          §§goto(addr0245);
                                                                                       }
                                                                                       §§goto(addr0242);
                                                                                    }
                                                                                    §§goto(addr0234);
                                                                                 }
                                                                                 §§goto(addr0230);
                                                                              }
                                                                              §§goto(addr0234);
                                                                           }
                                                                           §§goto(addr0230);
                                                                        }
                                                                        §§goto(addr0245);
                                                                     }
                                                                     §§goto(addr0230);
                                                                  }
                                                                  §§goto(addr01ba);
                                                               }
                                                               §§goto(addr0245);
                                                            }
                                                            §§goto(addr014f);
                                                         }
                                                         §§goto(addr0185);
                                                      }
                                                      §§goto(addr0183);
                                                   }
                                                   §§goto(addr0180);
                                                }
                                                §§goto(addr01da);
                                             }
                                             else
                                             {
                                                §§push(this._compdata);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00c1:
                                                   §§push(§§pop().animationDelay);
                                                   if(!_loc3_)
                                                   {
                                                      addr00c9:
                                                      §§push(-1);
                                                      if(_loc2_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               §§goto(addr00e1);
                                                            }
                                                            §§goto(addr0129);
                                                         }
                                                         §§goto(addr00f4);
                                                      }
                                                      §§goto(addr0185);
                                                   }
                                                   §§goto(addr0183);
                                                }
                                             }
                                             §§goto(addr0180);
                                          }
                                          §§goto(addr0114);
                                       }
                                       §§goto(addr00c9);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr017c);
                              }
                              §§goto(addr01ef);
                           }
                           §§goto(addr01c3);
                        }
                        §§goto(addr013c);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr01b4);
            }
            §§goto(addr01fe);
         }
         addr00e1:
         this.init();
         if(_loc2_ || Boolean(_loc1_))
         {
            §§goto(addr00f4);
         }
         addr0245:
      }
      
      private function init() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc1_)
         {
            §§push(this.comp);
            if(!(_loc2_ && _loc3_))
            {
               §§push(0);
               if(_loc3_)
               {
                  §§pop().alpha = §§pop();
                  if(!_loc2_)
                  {
                     addr0069:
                     this.comp.scaleX = this.comp.scaleY = 0;
                     addr005b:
                     addr0057:
                  }
                  return;
               }
               §§goto(addr0069);
            }
            §§goto(addr005b);
         }
         §§goto(addr0057);
      }
      
      private function spawnItem(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.init();
            if(!_loc3_)
            {
               this._alphaAnim = TweenMax.to(this.comp,ImprovementStoreAnimationMediator.spawnDuration,{
                  "alpha":1,
                  "delay":param1,
                  "onComplete":this.stopAlphaTween
               });
               if(!_loc3_)
               {
                  this._scaleAnim = TweenMax.to(this.comp,ImprovementStoreAnimationMediator.spawnDuration,{
                     "transformAroundCenter":{"scale":1},
                     "delay":param1,
                     "onComplete":this.stopScaleTween,
                     "onUpdate":this.measure,
                     "ease":Back.easeOut
                  });
                  addr0065:
               }
               §§goto(addr00b0);
            }
            §§goto(addr0065);
         }
         addr00b0:
      }
      
      private function stopAlphaTween() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._compdata.animationDelay = -3;
            if(_loc1_)
            {
               §§goto(addr0035);
            }
            §§goto(addr004b);
         }
         addr0035:
         this._alphaAnim.kill();
         if(_loc1_ || _loc2_)
         {
            addr004b:
            this.comp.alpha = 1;
         }
      }
      
      private function stopScaleTween() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this._scaleAnim.kill();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.comp);
               if(_loc1_)
               {
                  §§push(1);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop().scaleX = §§pop();
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0075:
                        this.comp.scaleY = 1;
                        addr0073:
                        addr006f:
                        if(!_loc2_)
                        {
                           addr007d:
                           invalidateSize();
                        }
                     }
                     return;
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0073);
            }
            §§goto(addr006f);
         }
         §§goto(addr007d);
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            dispatchEvent(new ImprovementStoreItemRendererEvent(ImprovementStoreItemRendererEvent.ITEM_OVER,true,this._compdata.configID,this.itemIndex));
         }
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new ImprovementStoreItemRendererEvent(ImprovementStoreItemRendererEvent.ITEM_OUT));
         }
      }
      
      override protected function measure() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.measure();
            if(_loc1_)
            {
               §§push(scaleX > 0);
               if(_loc1_ || _loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr004c);
                     }
                  }
                  §§goto(addr0062);
               }
               addr004c:
               §§pop();
               if(_loc1_)
               {
                  addr0062:
                  if(scaleY > 0)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        measuredWidth = 119 / scaleX;
                        if(_loc1_ || Boolean(this))
                        {
                           measuredHeight = 116 / scaleY;
                           addr008c:
                           if(_loc1_ || Boolean(this))
                           {
                           }
                        }
                     }
                  }
                  else
                  {
                     measuredWidth = 119;
                     if(!(_loc2_ && _loc1_))
                     {
                        measuredHeight = 116;
                     }
                  }
               }
               §§goto(addr00d0);
            }
            addr00d0:
            return;
         }
         §§goto(addr008c);
      }
      
      private function _ImprovementStoreRewardItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.top = 20;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(!_loc2_)
               {
                  _loc1_.width = 119;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.height = 116;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr0065);
                     }
                     §§goto(addr0090);
                  }
                  addr0065:
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        addr0090:
                        _loc1_.mxmlContent = [this._ImprovementStoreRewardItemRenderer_RewardItemComponent1_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00b4:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0090);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr0090);
      }
      
      private function _ImprovementStoreRewardItemRenderer_RewardItemComponent1_i() : RewardItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.showBottomPaper = false;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.id = "comp";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0074:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr007d:
                           this.comp = _loc1_;
                           if(!_loc3_)
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"comp",this.comp);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr0087);
                     }
                     addr0094:
                     return _loc1_;
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0074);
            }
         }
         §§goto(addr0087);
      }
      
      public function ___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.mouseOverHandler(param1);
         }
      }
      
      public function ___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.mouseOutHandler(param1);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3059471comp = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comp",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
   }
}

