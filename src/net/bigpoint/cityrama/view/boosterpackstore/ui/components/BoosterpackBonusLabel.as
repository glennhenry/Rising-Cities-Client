package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   
   public class BoosterpackBonusLabel extends Group
   {
      
      private var _102727412label:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BoosterpackBonusLabel()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  addr0049:
                  this.width = 112;
                  if(_loc1_ || _loc2_)
                  {
                     this.height = 30;
                     if(_loc1_)
                     {
                        this.horizontalCenter = 0;
                        if(!(_loc2_ && _loc1_))
                        {
                           this.verticalCenter = 0;
                           if(_loc1_)
                           {
                              addr008b:
                              this.mxmlContent = [this._BoosterpackBonusLabel_LocaLabel1_i()];
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr008b);
                     }
                  }
               }
               addr0096:
               return;
            }
            §§goto(addr008b);
         }
         §§goto(addr0049);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
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
      
      public function set bonusFactor(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.label);
            §§push("x ");
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().text = §§pop();
         }
      }
      
      public function set index(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.x = this.getPosXByIndex(param1);
            if(!_loc2_)
            {
               this.y = this.getPosYByIndex(param1);
            }
         }
      }
      
      public function getPosXByIndex(param1:Number) : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(param1);
         if(!_loc3_)
         {
            §§push(4);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(§§pop() % §§pop());
               if(!_loc3_)
               {
                  addr0030:
                  addr002e:
                  return §§pop() * 120;
               }
            }
            §§goto(addr0030);
         }
         §§goto(addr002e);
      }
      
      public function getPosYByIndex(param1:Number) : Number
      {
         return 192 + int(param1 / 4) * 160;
      }
      
      public function set labelStyle(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.label.styleName = param1;
         }
      }
      
      public function set labelOutlineColour(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.label.outlineColor = param1;
         }
      }
      
      public function set labelOutlineAlpha(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.label.outlineAlpha = param1;
         }
      }
      
      private function _BoosterpackBonusLabel_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "poosterpackBonusLabel";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.useOutline = true;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr007d);
                     }
                     §§goto(addr0088);
                  }
                  addr007d:
                  _loc1_.id = "label";
                  if(_loc2_)
                  {
                     addr0088:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr00a0:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00a9:
                              this.label = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 BindingManager.executeBindings(this,"label",this.label);
                              }
                           }
                           §§goto(addr00c8);
                        }
                     }
                     §§goto(addr00a9);
                  }
                  addr00c8:
                  return _loc1_;
               }
               §§goto(addr00a0);
            }
         }
         §§goto(addr0088);
      }
      
      [Bindable(event="propertyChange")]
      public function get label() : LocaLabel
      {
         return this._102727412label;
      }
      
      public function set label(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._102727412label;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._102727412label = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
   }
}

