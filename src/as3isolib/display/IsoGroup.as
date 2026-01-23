package as3isolib.display
{
   import as3isolib.bounds.IBounds;
   import as3isolib.bounds.PrimitiveBounds;
   import as3isolib.bounds.SceneBounds;
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.core.IsoDisplayObject;
   import as3isolib.core.as3isolib_internal;
   import as3isolib.display.renderers.ISceneLayoutRenderer;
   import as3isolib.display.renderers.SimpleSceneLayoutRenderer;
   import as3isolib.display.scene.IIsoScene;
   import flash.display.DisplayObjectContainer;
   
   use namespace as3isolib_internal;
   
   public class IsoGroup extends IsoDisplayObject implements IIsoScene
   {
      
      private var bSizeSetExplicitly:Boolean;
      
      public var renderer:ISceneLayoutRenderer;
      
      public function IsoGroup(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.renderer = new SimpleSceneLayoutRenderer();
            if(_loc2_)
            {
               addr0027:
               super(param1);
            }
            return;
         }
         §§goto(addr0027);
      }
      
      public function get hostContainer() : DisplayObjectContainer
      {
         return null;
      }
      
      public function set hostContainer(param1:DisplayObjectContainer) : void
      {
      }
      
      public function get invalidatedChildren() : Array
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:Array = null;
         var _loc2_:IIsoDisplayObject = null;
         for each(_loc2_ in children)
         {
            if(_loc6_)
            {
               if(!_loc2_.isInvalidated)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      override public function get isoBounds() : IBounds
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            return this.bSizeSetExplicitly ? new PrimitiveBounds(this) : new SceneBounds(this);
         }
         §§goto(addr0030);
      }
      
      override public function set width(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.width = param1;
            if(!_loc3_)
            {
               addr0028:
               this.bSizeSetExplicitly = !isNaN(param1);
            }
            return;
         }
         §§goto(addr0028);
      }
      
      override public function set length(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.length = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr003b:
               this.bSizeSetExplicitly = !isNaN(param1);
            }
            return;
         }
         §§goto(addr003b);
      }
      
      override public function set height(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.height = param1;
            if(_loc3_ || Boolean(this))
            {
               addr0040:
               this.bSizeSetExplicitly = !isNaN(param1);
            }
            return;
         }
         §§goto(addr0040);
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.renderLogic(param1);
            if(!_loc2_)
            {
               if(as3isolib_internal::bIsInvalidated)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!this.bSizeSetExplicitly)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0058:
                           this.calculateSizeFromChildren();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0077:
                              §§push(this.renderer);
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr0089:
                                       this.renderer = new SimpleSceneLayoutRenderer();
                                       if(_loc3_)
                                       {
                                          addr009d:
                                          this.renderer.renderScene(this);
                                          addr0099:
                                          if(!_loc2_)
                                          {
                                             addr00a7:
                                             as3isolib_internal::bIsInvalidated = false;
                                          }
                                       }
                                    }
                                    §§goto(addr00ae);
                                 }
                                 §§goto(addr0099);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0099);
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0089);
               }
               addr00ae:
               return;
            }
            §§goto(addr0058);
         }
         §§goto(addr00a7);
      }
      
      protected function calculateSizeFromChildren() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:IBounds = new SceneBounds(this);
         if(_loc2_ || Boolean(_loc1_))
         {
            as3isolib_internal::isoWidth = _loc1_.width;
            if(_loc2_ || _loc2_)
            {
               as3isolib_internal::isoLength = _loc1_.length;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0073:
                  as3isolib_internal::isoHeight = _loc1_.height;
               }
            }
            return;
         }
         §§goto(addr0073);
      }
   }
}

