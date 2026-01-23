package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateMysteryBuildingManager extends IconStateManager
   {
      
      private var _constructionIcon:Sprite;
      
      public function IconStateMysteryBuildingManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param2)))
         {
            this._constructionIcon = new Sprite();
            if(!(_loc4_ && Boolean(this)))
            {
               super.prepareIconStateManager(param1,param2,param3);
            }
         }
      }
      
      override protected function setIcon() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Sprite = null;
         if(_loc2_ || _loc3_)
         {
            super.setIcon();
         }
      }
      
      private function setConstructionIcon() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(!this._constructionIcon.numChildren)
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr0058);
            }
            this._constructionIcon.removeChildAt(0);
         }
         while(!_loc2_);
         
         this._constructionIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ConstructionStepReady",true));
         addr0058:
      }
   }
}

