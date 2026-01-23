package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class ClientFieldObjectVo extends MatrixObject3dVo
   {
      
      private var _assetFrame:String;
      
      public function ClientFieldObjectVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function get assetFrame() : String
      {
         return this._assetFrame;
      }
      
      public function set assetFrame(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._assetFrame = param1;
         }
      }
   }
}

