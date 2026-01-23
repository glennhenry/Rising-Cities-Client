package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.CinemaFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateCinemaManager;
   
   public class CinemaFieldObject extends SpecialFieldObject
   {
      
      public function CinemaFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function prepareIconStateManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(_iconStateManager == null)
            {
               if(_loc2_)
               {
                  _iconStateManager = new IconStateCinemaManager();
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0047:
                     _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
                  }
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      public function get cinemaFieldObjectVo() : CinemaFieldObjectVo
      {
         return CinemaFieldObjectVo(_data);
      }
   }
}

