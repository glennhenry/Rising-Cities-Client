package net.bigpoint.cityrama.model.vo
{
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   
   public class PlayfieldItemCreateVo
   {
      
      private var _billboardObjectVo:BillboardObjectVo;
      
      private var _buyPermission:Boolean;
      
      public function PlayfieldItemCreateVo(param1:BillboardObjectVo, param2:Boolean = false)
      {
         super();
         this._billboardObjectVo = param1;
         this._buyPermission = param2;
      }
      
      public function get billboardObjectVo() : BillboardObjectVo
      {
         return this._billboardObjectVo;
      }
      
      public function set billboardObjectVo(param1:BillboardObjectVo) : void
      {
         this._billboardObjectVo = param1;
      }
      
      public function get buyPermission() : Boolean
      {
         return this._buyPermission;
      }
      
      public function set buyPermission(param1:Boolean) : void
      {
         this._buyPermission = param1;
      }
   }
}

