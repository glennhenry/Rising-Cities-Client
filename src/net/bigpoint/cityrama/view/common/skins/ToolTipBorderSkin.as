package net.bigpoint.cityrama.view.common.skins
{
   import flash.display.MovieClip;
   import flash.filters.DropShadowFilter;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.core.SpriteVisualElement;
   import spark.skins.SparkSkin;
   
   public class ToolTipBorderSkin extends SparkSkin
   {
      
      private var _1705322899backgroundSprite:SpriteVisualElement;
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToolTipBorder;
      
      public function ToolTipBorderSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0042:
                  this.percentWidth = 100;
                  if(!_loc1_)
                  {
                     this.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr0060:
                        this.mxmlContent = [this._ToolTipBorderSkin_SpriteVisualElement1_i(),this._ToolTipBorderSkin_Group1_i()];
                        if(!(_loc1_ && _loc2_))
                        {
                           addr007e:
                           this.addEventListener("creationComplete",this.___ToolTipBorderSkin_SparkSkin1_creationComplete);
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0060);
            }
            addr008a:
            return;
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
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
      
      private function addBackground() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MovieClip = new TooltipAsset();
         if(_loc2_ || _loc2_)
         {
            this.backgroundSprite.addChild(_loc1_);
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.width = this.backgroundSprite.width;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.height = this.backgroundSprite.height;
                  if(_loc2_)
                  {
                     _loc1_.alpha = 0.95;
                     if(!_loc3_)
                     {
                        addr0088:
                        _loc1_.filters = [new DropShadowFilter(2,90,0,1,6,6,0.8,1)];
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0088);
      }
      
      private function _ToolTipBorderSkin_SpriteVisualElement1_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.bottom = 2;
                  if(!_loc3_)
                  {
                     _loc1_.right = 2;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0073:
                        _loc1_.initialized(this,"backgroundSprite");
                        if(!_loc3_)
                        {
                           this.backgroundSprite = _loc1_;
                           if(!_loc3_)
                           {
                              addr008b:
                              BindingManager.executeBindings(this,"backgroundSprite",this.backgroundSprite);
                           }
                        }
                     }
                     §§goto(addr0098);
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr008b);
         }
         addr0098:
         return _loc1_;
      }
      
      private function _ToolTipBorderSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.id = "contentGroup";
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        addr007a:
                        this.contentGroup = _loc1_;
                        if(_loc3_)
                        {
                           BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                        }
                     }
                  }
                  §§goto(addr0091);
               }
            }
            §§goto(addr007a);
         }
         addr0091:
         return _loc1_;
      }
      
      public function ___ToolTipBorderSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.addBackground();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundSprite() : SpriteVisualElement
      {
         return this._1705322899backgroundSprite;
      }
      
      public function set backgroundSprite(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1705322899backgroundSprite;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1705322899backgroundSprite = param1;
                  addr0041:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundSprite",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._809612678contentGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToolTipBorder
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToolTipBorder) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
         }
         addr007a:
      }
   }
}

