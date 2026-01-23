package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class ClientFieldObjectVo extends MatrixObject3dVo
   {
      
      private var _assetFrame:String;
      
      public function ClientFieldObjectVo()
      {
         super();
      }
      
      public function get assetFrame() : String
      {
         return this._assetFrame;
      }
      
      public function set assetFrame(param1:String) : void
      {
         this._assetFrame = param1;
      }
   }
}

