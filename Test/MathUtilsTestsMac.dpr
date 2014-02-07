// ###################################################################
// #### This file is part of the mathematics library project, and is
// #### offered under the licence agreement described on
// #### http://www.mrsoft.org/
// ####
// #### Copyright:(c) 2011, Michael R. . All rights reserved.
// ####
// #### Unless required by applicable law or agreed to in writing, software
// #### distributed under the License is distributed on an "AS IS" BASIS,
// #### WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// #### See the License for the specific language governing permissions and
// #### limitations under the License.
// ###################################################################
// ###################################################################
// #### certain MACOS contributions and testing William Cantrall
// ###################################################################

program MathUtilsTestsMac;

{$IFNDEF MACOS}
{$Message ERROR 'This console unit test framework is only usable for MacOS'}
{$ENDIF}

{$CODEALIGN 16}


uses
  FMX.Forms,
  TestFramework,
  TextTestRunner,
  TestSimpleMatrixOperations in 'TestSimpleMatrixOperations.pas',
  TestLineEquations in 'TestLineEquations.pas',
  TestEigensystems in 'TestEigensystems.pas',
  BaseMatrixTestCase in 'BaseMatrixTestCase.pas',
  TestMatrixClass in 'TestMatrixClass.pas',
  ASMConsts in '..\ASMConsts.pas',
  ASMMatrixAddSubOperations in '..\ASMMatrixAddSubOperations.pas',
  ASMMatrixAddSubOperationsx64 in '..\ASMMatrixAddSubOperationsx64.pas',
  ASMMatrixElementwiseMultOperations in '..\ASMMatrixElementwiseMultOperations.pas',
  ASMMatrixElementwiseMultOperationsx64 in '..\ASMMatrixElementwiseMultOperationsx64.pas',
  ASMMatrixMeanOperations in '..\ASMMatrixMeanOperations.pas',
  ASMMatrixMeanOperationsx64 in '..\ASMMatrixMeanOperationsx64.pas',
  ASMMatrixMinMaxOperations in '..\ASMMatrixMinMaxOperations.pas',
  ASMMatrixMinMaxOperationsx64 in '..\ASMMatrixMinMaxOperationsx64.pas',
  ASMMatrixMultAddTransposedOperations in '..\ASMMatrixMultAddTransposedOperations.pas',
  ASMMatrixMultAddTransposedOperationsx64 in '..\ASMMatrixMultAddTransposedOperationsx64.pas',
  ASMMatrixMultOperations in '..\ASMMatrixMultOperations.pas',
  ASMMatrixMultOperationsx64 in '..\ASMMatrixMultOperationsx64.pas',
  ASMMatrixMultTransposedOperations in '..\ASMMatrixMultTransposedOperations.pas',
  ASMMatrixMultTransposedOperationsx64 in '..\ASMMatrixMultTransposedOperationsx64.pas',
  ASMMatrixNormOperations in '..\ASMMatrixNormOperations.pas',
  ASMMatrixNormOperationsx64 in '..\ASMMatrixNormOperationsx64.pas',
  ASMMatrixOperations in '..\ASMMatrixOperations.pas',
  ASMMatrixScaleOperations in '..\ASMMatrixScaleOperations.pas',
  ASMMatrixScaleOperationsx64 in '..\ASMMatrixScaleOperationsx64.pas',
  ASMMatrixSqrtOperations in '..\ASMMatrixSqrtOperations.pas',
  ASMMatrixSqrtOperationsx64 in '..\ASMMatrixSqrtOperationsx64.pas',
  ASMMatrixSumOperations in '..\ASMMatrixSumOperations.pas',
  ASMMatrixSumOperationsx64 in '..\ASMMatrixSumOperationsx64.pas',
  ASMMatrixTransposeOperations in '..\ASMMatrixTransposeOperations.pas',
  ASMMatrixTransposeOperationsx64 in '..\ASMMatrixTransposeOperationsx64.pas',
  ASMMatrixVectorMultOperations in '..\ASMMatrixVectorMultOperations.pas',
  ASMMatrixVectorMultOperationsx64 in '..\ASMMatrixVectorMultOperationsx64.pas',
  ASMMoveOperations in '..\ASMMoveOperations.pas',
  ASMMoveOperationsx64 in '..\ASMMoveOperationsx64.pas',
  BaseMathPersistence in '..\BaseMathPersistence.pas',
  BinaryReaderWriter in '..\BinaryReaderWriter.pas',
  BlockSizeSetup in '..\BlockSizeSetup.pas',
  BufferedStream in '..\BufferedStream.pas',
  CPUFeatures in '..\CPUFeatures.pas',
  Eigensystems in '..\Eigensystems.pas',
  IncrementalPCA in '..\IncrementalPCA.pas',
  LinearAlgebraicEquations in '..\LinearAlgebraicEquations.pas',
  MathUtilFunc in '..\MathUtilFunc.pas',
  Matrix in '..\Matrix.pas',
  MatrixConst in '..\MatrixConst.pas',
  MtxThreadPool in '..\MtxThreadPool.pas',
  MtxTimer in '..\MtxTimer.pas',
  NonLinearFit in '..\NonLinearFit.pas',
  OptimizedFuncs in '..\OptimizedFuncs.pas',
  PCA in '..\PCA.pas',
  SimpleMatrixOperations in '..\SimpleMatrixOperations.pas',
  ThreadedLinAlg in '..\ThreadedLinAlg.pas',
  ThreadedMatrix in '..\ThreadedMatrix.pas',
  ThreadedMatrixOperations in '..\ThreadedMatrixOperations.pas',
  Utilities in '..\Utilities.pas',
  GCDDispatch in '..\mac\GCDDispatch.pas',
  MacOsThreadPool in '..\mac\MacOsThreadPool.pas',
  SimpleWinThreadPool in '..\win\SimpleWinThreadPool.pas',
  WinThreadPool in '..\win\WinThreadPool.pas';

{$R *.res}

begin
  Application.Initialize;
  //if IsConsole then
    TextTestRunner.RunRegisteredTests;
  //else
    //GUITestRunner.RunRegisteredTests;
end.