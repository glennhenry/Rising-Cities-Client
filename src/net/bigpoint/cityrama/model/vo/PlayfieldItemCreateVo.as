package net.bigpoint.cityrama.model.vo
{
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   
   public class PlayfieldItemCreateVo
   {
      
      private var _billboardObjectVo:BillboardObjectVo;
      
      private var _buyPermission:Boolean;
      
      public function PlayfieldItemCreateVo(param1:BillboardObjectVo, param2:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               this._billboardObjectVo = param1;
               if(!_loc3_)
               {
                  addr002b:
                  this._buyPermission = param2;
               }
               return;
            }
         }
         §§goto(addr002b);
      }
      
      public function get billboardObjectVo() : BillboardObjectVo
      {
         return this._billboardObjectVo;
      }
      
      public function set billboardObjectVo(param1:BillboardObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._billboardObjectVo = param1;
         }
      }
      
      public function get buyPermission() : Boolean
      {
         return this._buyPermission;
      }
      
      public function set buyPermission(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._buyPermission = param1;
         }
      }
   }
}

