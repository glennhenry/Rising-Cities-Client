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
         super();
      }
      
      override public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         this._constructionIcon = new Sprite();
         super.prepareIconStateManager(param1,param2,param3);
      }
      
      override protected function setIcon() : void
      {
         super.setIcon();
      }
      
      private function setConstructionIcon() : void
      {
         while(this._constructionIcon.numChildren)
         {
            this._constructionIcon.removeChildAt(0);
         }
         this._constructionIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ConstructionStepReady",true));
      }
   }
}

