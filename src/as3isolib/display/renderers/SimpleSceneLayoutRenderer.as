package as3isolib.display.renderers
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.display.scene.IIsoScene;
   
   public class SimpleSceneLayoutRenderer implements ISceneLayoutRenderer
   {
      
      public var sortOnProps:Array;
      
      private var collisionDetectionFunc:Function = null;
      
      public function SimpleSceneLayoutRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.sortOnProps = ["y","x","z"];
            if(!(_loc1_ && _loc2_))
            {
               addr0045:
               super();
            }
            return;
         }
         §§goto(addr0045);
      }
      
      public function renderScene(param1:IIsoScene) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:IIsoDisplayObject = null;
         var _loc4_:* = 0;
         var _loc2_:Array = param1.displayListChildren.slice();
         if(_loc6_)
         {
            _loc2_.sortOn(this.sortOnProps,Array.NUMERIC);
         }
         var _loc5_:uint = _loc2_.length;
         while(_loc4_ < _loc5_)
         {
            _loc3_ = IIsoDisplayObject(_loc2_[_loc4_]);
            if(_loc6_)
            {
               if(_loc3_.depth != _loc4_)
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     addr0096:
                     param1.setChildIndex(_loc3_,_loc4_);
                     if(!(_loc6_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc4_);
               if(_loc6_)
               {
                  §§push(uint(§§pop() + 1));
               }
               _loc4_ = §§pop();
               continue;
            }
            §§goto(addr0096);
         }
      }
      
      public function get collisionDetection() : Function
      {
         return this.collisionDetectionFunc;
      }
      
      public function set collisionDetection(param1:Function) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.collisionDetectionFunc = param1;
         }
      }
   }
}

